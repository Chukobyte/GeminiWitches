///game_controller_step()
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
    case rm_choose_character:
    case rm_play_again:
        if(audio_is_playing(snd_main)) {
            audio_stop_sound(snd_main);
        }
        //temp solution for last room ending
        var mouse_on_yes = false;
        var mouse_on_no = false;
        
        if((mouse_x >= (128 - 4)) &&
        (mouse_x <= (192 - 4)) &&
        (mouse_y >= (128)) &&
        (mouse_y <= (160 + 4))) {
            mouse_on_yes = true;
        }
        
        if((mouse_x >= (416 - 2)) &&
        (mouse_x <= (480 - 10)) &&
        (mouse_y >= (128)) &&
        (mouse_y <= (160 + 4))) {
            mouse_on_no = true;
        }
        
        if(mouse_check_button_pressed(mb_left)) {
            if(mouse_on_yes) {
            game_restart();
            } else if(mouse_on_no) {
            game_end();
            }
        }
}       
