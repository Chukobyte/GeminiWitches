///game_controller_step()

get_player_input();
var is_pause = global.game_paused;
//Pause Logic
if(room == rm_pause_menu && global.game_paused) {
    global.menu_item_pause_delay--;
    
    //exp stuff here
    if(PlayerStats.fire_level == 1) {
        MenuFire.image_blend = c_white;
    } else {
        MenuFire.image_blend = c_dkgray;
    }
    
    if(PlayerStats.water_level == 1) {
        MenuWater.image_blend = c_white;
    } else {
        MenuWater.image_blend = c_dkgray;
    }
    
    if(PlayerStats.earth_level == 1) {
        MenuEarth.image_blend = c_white;
    } else {
        MenuEarth.image_blend = c_dkgray;
    }
    
    if(PlayerStats.wind_level == 1) {
        MenuWind.image_blend = c_white;
    } else {
        MenuWind.image_blend = c_dkgray;
    }
        
    if(start && global.menu_item_pause_delay <= 0) {
        global.menu_item_pause_delay = global.menu_item_pause_delay_max;
        global.game_paused = false;
        room_goto(PlayerStats.current_room);
    }
}       

if(full_screen_button) {
    if(window_get_fullscreen()) {
        window_set_fullscreen(false);
        texture_set_interpolation(false);
    } else {
        window_set_fullscreen(true);
        texture_set_interpolation(true);
    }
}

if(restart_button) {
    game_restart();
}

if(end_game_button) {
    game_end();
}

//uses macro to enable disable screenshot
if(screen_shot_button && SCREEN_SHOT) {
    var time = string(current_hour) + "." + string(current_minute) + "." + string(current_second);
    screen_save(working_directory + "\Screens\ScreenShot_" + time + ".png")
}

if(global.game_paused) {
    return -1;
}

if(view_wport[0] != surface_get_width(application_surface) || view_hport[0] != surface_get_height(application_surface)) {
    surface_resize(application_surface, view_wport[0],view_hport[0]);
}

switch(room) {
    default:

//        if(global.time > 0) {
            if(global.second_counter == room_speed) {
                global.time++;
                global.second_counter = 0;
            } else {
                global.second_counter++;
            }
//        }
        if(!audio_is_playing(snd_main) && global.options_menu_sound_selection == "ON") {
            ///Play the background music
            audio_em = audio_emitter_create();
            audio_emitter_gain(audio_em, .3);
            audio_play_sound_on(audio_em, snd_main, true, 10);
        }
        
        //for select room
        if(room == rm_select) {
            show_exit_door = true;
        
            var levels_complete = global.earth_level_completed && global.wind_level_completed 
                && global.fire_level_completed && global.water_level_completed
            
            if(levels_complete) {
                //Destroys closed doors
                if(instance_exists(DoorClosed)) {
                  with(DoorClosed){
                    instance_destroy();
                  }
                }
                
                //Show Boss door
                with(Door) {
                    if(room_selected == rm_boss) {
                        visible = true;
                    }
                }
            } else {
                with(Door) {
                    if(room_selected == rm_boss) {
                        visible = false;
                    }
                }
            }
        } else if(room == rm_boss) {
            //Won't show exit door unless objective is complete
            if(instance_exists(Devil)) {
                Door.visible = false;
            } else {
                Door.visible = true;
            }
        }        
        
        break;
        
    case rm_game_menu:
        global.menu_item_selection_timer--;
        global.menu_item_confirmation_delay--;
        
        if(hold_up && global.menu_item_selection_timer <= 0) {
            global.menu_item_selection_timer = global.menu_item_selection_timer_max;
            if(global.game_menu_selection == global.game_menu_selection_play) {
                global.game_menu_selection = global.game_menu_selection_exit
            } else if(global.game_menu_selection == global.game_menu_selection_options) {
                global.game_menu_selection = global.game_menu_selection_play
            } else if(global.game_menu_selection == global.game_menu_selection_exit) {
                global.game_menu_selection = global.game_menu_selection_options
            }
        } else if(down && global.menu_item_selection_timer <= 0) {
            global.menu_item_selection_timer = global.menu_item_selection_timer_max;
            if(global.game_menu_selection == global.game_menu_selection_play) {
                global.game_menu_selection = global.game_menu_selection_options
            } else if(global.game_menu_selection == global.game_menu_selection_options) {
                global.game_menu_selection = global.game_menu_selection_exit
            } else if(global.game_menu_selection == global.game_menu_selection_exit) {
                global.game_menu_selection = global.game_menu_selection_play
            }
        }
        
        if((start || attack_button_pressed) && global.menu_item_confirmation_delay <= 0) {
            global.menu_item_confirmation_delay = global.menu_item_confirmation_delay_max;
            if(global.game_menu_selection == global.game_menu_selection_play) {
                room_goto(rm_choose_character);
            } else if(global.game_menu_selection == global.game_menu_selection_options) {
                room_goto(rm_options_menu);
            } else if(global.game_menu_selection == global.game_menu_selection_exit) {
                game_end();
            } 
        }
        
        break;
        
    case rm_options_menu:
        global.menu_item_selection_timer--;
        global.menu_item_confirmation_delay--;
        
        if((hold_up || down) && global.menu_item_selection_timer <= 0) {
            global.menu_item_selection_timer = global.menu_item_selection_timer_max;
            if(global.options_menu_selection == global.options_menu_sound) {
                global.options_menu_selection = global.options_menu_back_to_menu;
            } else if(global.options_menu_selection == global.options_menu_back_to_menu) {
                global.options_menu_selection = global.options_menu_sound;
            }
        }
        
        if(start && global.menu_item_confirmation_delay <= 0) {
            global.menu_item_confirmation_delay = global.menu_item_confirmation_delay_max;
            if(global.options_menu_selection == global.options_menu_sound) {
                if(global.options_menu_sound_selection == "ON") {
                    global.options_menu_sound_selection = "OFF";
                } else if(global.options_menu_sound_selection == "OFF") {
                    global.options_menu_sound_selection = "ON";
                }
            } else if(global.options_menu_selection == global.options_menu_back_to_menu) {
                room_goto(rm_game_menu);
            }
        }
        
        if(special_button_pressed) {
            room_goto(rm_game_menu);
        }
        break;
        
    case rm_choose_character:
        if(instance_exists(SeikaPortrait) || instance_exists(AmayaPortrait)) {
            global.menu_item_selection_timer--;
            global.menu_item_confirmation_delay--;
            if(global.choose_character_selection == SeikaPortrait) {
                SeikaPortrait.image_blend = c_white;
                AmayaPortrait.image_blend = c_dkgray;
            } else if(global.choose_character_selection == AmayaPortrait) {
                AmayaPortrait.image_blend = c_white;
                SeikaPortrait.image_blend = c_dkgray;
            }
        
            if((left || right) && global.menu_item_selection_timer <= 0) {
                global.menu_item_selection_timer = global.menu_item_selection_timer_max;
                if(global.choose_character_selection == SeikaPortrait) {
                    global.choose_character_selection = AmayaPortrait;
                } else if(global.choose_character_selection == AmayaPortrait) {
                    global.choose_character_selection = SeikaPortrait;
                }
            }
            
            //Give PlayerStats object base increase based on selected character
            if((start || attack_button_pressed) && global.menu_item_confirmation_delay <= 0) {
                global.menu_item_confirmation_delay = global.menu_item_confirmation_delay_max;
                if(global.choose_character_selection == SeikaPortrait) {
                    global.player_1_selected = Seika;
                    PlayerStats.attack = 0;
                    PlayerStats.spd += .5;
                    PlayerStats.jump_height -= .5;
                } else if(global.choose_character_selection == AmayaPortrait) {
                    global.player_1_selected = Amaya;
                    PlayerStats.attack += .5;
                }
                
                room_goto_next();
            }
            
            if(special_button_pressed) {
                room_goto(rm_game_menu);
            }
            
            
        }
        
        break;
        
    case rm_play_again:
        global.menu_item_selection_timer--;
        if(audio_is_playing(snd_main)) {
            audio_stop_sound(snd_main);
        }
        
        if((left || right) && global.menu_item_selection_timer <= 0) {
            global.menu_item_selection_timer = global.menu_item_selection_timer_max;
            if(global.play_again_prompt == global.play_again_prompt_yes) {
                global.play_again_prompt = global.play_again_prompt_no;
            } else if(global.play_again_prompt == global.play_again_prompt_no) {
                global.play_again_prompt = global.play_again_prompt_yes;
            }
        }
        
        if(start || attack_button_pressed) {
            if(global.play_again_prompt == global.play_again_prompt_yes) {
                game_restart();
            } else if(global.play_again_prompt == global.play_again_prompt_no) {
                game_end();
            }
        }
        
        var mouse_on_yes = (mouse_x >= (128 - 4)) && (mouse_x <= (192 - 4)) && (mouse_y >= (128)) && (mouse_y <= (160 + 4));
        var mouse_on_no = (mouse_x >= (416 - 2)) && (mouse_x <= (480 - 10)) && (mouse_y >= (128)) && (mouse_y <= (160 + 4));
        
        if(mouse_check_button_pressed(mb_left)) {
            if(mouse_on_yes) {
            game_restart();
            } else if(mouse_on_no) {
            game_end();
            }
        }
        break;
        
    case rm_cutscene:
        if(!audio_is_playing(snd_main) && global.options_menu_sound_selection == "ON") {
            ///Play the background music
            audio_em = audio_emitter_create();
            audio_emitter_gain(audio_em, .3);
            audio_play_sound_on(audio_em, snd_main, true, 10);
        }
        
        if(timeline_index != tl_game_controller_cutscene) {
            timeline_index = tl_game_controller_cutscene;
            timeline_position = 0;
            timeline_running = true;
            timeline_loop = false;
        }
        break;
}       
