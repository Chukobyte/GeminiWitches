///game_controller_step()



get_player_input();
var is_pause = global.game_paused;
//Pause Logic
if(room == rm_pause_menu && global.game_paused) {
    global.menu_item_pause_delay--;
    if(!audio_is_playing(snd_main)) {
        ///Play the background music
        audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .3);
        audio_play_sound_on(audio_em, snd_main, true, 10);
    }
    
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
    window_set_fullscreen(!window_get_fullscreen());
}

if(restart_button) {
    game_restart();
}

if(global.game_paused) {
    return -1;
}

switch(room) {
    default:
    
        if(global.time > 0) {
            if(global.second_counter == room_speed) {
                global.time--;
                global.second_counter = 0;
            } else {
                global.second_counter++;
            }
        }
        if(!audio_is_playing(snd_main)) {
            ///Play the background music
            audio_em = audio_emitter_create();
            audio_emitter_gain(audio_em, .3);
            audio_play_sound_on(audio_em, snd_main, true, 10);
        }
        
        //Won't show exit door unless objective is complete
        if(PlayerStats.soul_gems < 2 || instance_exists(Devil)) {
            show_exit_door = false;
        } else {
            //Destroy other gems
            with(SoulGem) {
                instance_destroy();
            }
            show_exit_door = true;
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
        
        if((start || attack_button) && global.menu_item_confirmation_delay <= 0) {
            global.menu_item_confirmation_delay = global.menu_item_confirmation_delay_max;
            if(global.game_menu_selection == global.game_menu_selection_play) {
                room_goto(rm_choose_character);
            } else if(global.game_menu_selection == global.game_menu_selection_exit) {
                game_end();
            }
        }
        
        break;
        
    case rm_water:
    
        if(global.time > 0) {
            if(global.second_counter == room_speed) {
                global.time--;
                global.second_counter = 0;
            } else {
                global.second_counter++;
            }
        }
        
        /*
        if(!audio_is_playing(snd_new_music)) {
            ///Play the background music
            audio_em = audio_emitter_create();
            audio_emitter_gain(audio_em, .5);
            audio_play_sound_on(audio_em, snd_new_music, true, 10);
        }
        */
        
        //Won't show exit door unless objective is complete
        if(PlayerStats.soul_gems < 2 || instance_exists(Devil)) {
            show_exit_door = false;
        } else {
            //Destroy other gems
            with(SoulGem) {
                instance_destroy();
            }
            show_exit_door = true;
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
            
            if((start || attack_button) && global.menu_item_confirmation_delay <= 0) {
                global.menu_item_confirmation_delay = global.menu_item_confirmation_delay_max;
                if(global.choose_character_selection == SeikaPortrait) {
                    global.player_1_selected = Seika;
                } else if(global.choose_character_selection == AmayaPortrait) {
                    global.player_1_selected = Amaya;
                }
                
                room_goto(rm_main);
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
        
        if(start || attack_button || up) {
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
}       
