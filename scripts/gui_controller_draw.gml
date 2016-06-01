///gui_controller_draw()

//Refresh gui properties
gui_controller_init();

//Sets gui size based on view
display_set_gui_size(gui_width, gui_height);

switch(room) {
    /* default will be the level rooms for now
    * will display health, magic, lives, etc
    */
    default:
        draw_set_font(-1);
        
        //TODO: Implement exp bar later
        
        var hpAmount = (PlayerStats.hp / PlayerStats.maxhp) * 100;
        var mpAmount = (PlayerStats.mp / PlayerStats.maxmp) * 100;
        var expAmount = (PlayerStats.level_exp / PlayerStats.level_exp_max) * 100;
        draw_healthbar(10, 10, 20, 40, hpAmount, c_black, c_red, c_lime, 3, true, true);
        draw_healthbar(21, 10, 31, 40, mpAmount, c_black, c_blue, c_blue, 3, true, true);
        draw_healthbar(32, 10, 35, 40, expAmount, c_black, c_orange, c_yellow, 3, true, true)
        
        draw_text_colour(200, 5, "Time", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
        draw_text_colour(207, 20, global.time, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
        
        draw_sprite(spr_gold_coin, 0, 408, 22);
        draw_text_colour(416, 14, "x" + string(PlayerStats.money), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
        
        //draw lives
        var head_sprite = "none";
        if(global.player_1_selected == Seika) {
            head_sprite = spr_seika_head;
        } else if(global.player_1_selected == Amaya) {
            head_sprite = spr_amaya_head;
        } 
        draw_sprite(head_sprite, 0, 448, 20);
        draw_text_colour(460, 14, "x" + string(PlayerStats.player_lives), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
        
        draw_text_colour(10, 280, "Level: " + string(PlayerStats.level), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
        //debug
        if(global.debug) {
            draw_text_colour(400, 32, "fps: " + string(fps), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1); 
        }
        
        break;
    case rm_choose_character:
    
        //Draw text
        draw_set_font(fnt_choose_character);
        var chooseText = "CHOOSE YOUR CHARACTER!!!";
        draw_text_outline_color(96, 32, 2, chooseText, c_dkgray, c_yellow); 
    
        //Draw character name
        draw_set_font(-1);
        draw_set_colour(c_white);
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_text(160 + 16, 96 - 16, "SEIKA");
        draw_text(416 + 16, 96 - 16, "AMAYA");
        
        //Draw clickable chacters
        instance_create(160 - 16, 96, SeikaPortrait);
        instance_create(416 - 16, 96, AmayaPortrait);
        
        //Draw stats box
        //draw_rectangle_color(128, 192 - 16, 192 + 32, 192 + 96, c_gray, c_yellow, c_gray, c_yellow, false);
        //(113,96,246) for Purple Seika
        //(72,195,80) for Green Amaya
        
        var seika_color = make_color_rgb(113,96,246);
        draw_roundrect_outline_color(128, 192 - 16, 224, 288, seika_color, c_dkgray, c_yellow, 3, true);
        
        var amaya_color = make_color_rgb(72,195,80);
        draw_roundrect_outline_color(384, 192 - 16, 480, 288, amaya_color, c_dkgray, c_yellow, 3, true);
        
        //Draw character stats
        draw_set_halign(fa_left);
        draw_set_valign(fa_left);
        draw_text(128 + 4, 192 - 16 + 4, "Attack: 2#Speed: 3");
        draw_text(384 + 4, 192 - 16 + 4, "Attack: 3#Speed: 2");
                
        break;
        
        case rm_options_menu:
            draw_set_font(fnt_choose_character);
            switch(global.options_menu_selection) {
                case global.options_menu_back_to_menu:
                    draw_rectangle_colour(188, 160, 410, 196, c_yellow, c_dkgray, c_yellow, c_dkgray, true);
                    break;
                
                case global.options_menu_sound:
                    draw_rectangle_colour(300, 96, 362, 130, c_yellow, c_dkgray, c_yellow, c_dkgray, true);
                    break;
            }
            draw_text_outline_color(192, 96, 2, global.options_menu_sound, c_dkgray, c_yellow);
            var sound_value = "none";
            if(global.options_menu_sound_selection == "OFF") {
                sound_value = "OFF";
            } else if(global.options_menu_sound_selection == "ON") {
                sound_value = "ON";
            }
            draw_text_outline_color(302, 96, 2, sound_value, c_dkgray, c_yellow);
            
            draw_text_outline_color(192, 96 + 64, 2, global.options_menu_back_to_menu, c_dkgray, c_yellow);
            break;
        
        case rm_play_again:
            
            //temp play again room
            draw_set_font(fnt_choose_character);
            draw_text_outline_color(192, 32, 2, "PLAY AGAIN!?", c_dkgray, c_yellow);
            
            //var determine size for cursor
            var yes_cursor;
            var yes_color;
            var no_cursor;
            var no_color;
            if(global.play_again_prompt == global.play_again_prompt_yes) {
                yes_cursor = 2;
                yes_color = c_yellow;
                no_cursor = 1;
                no_color = c_dkgray;
            } else if(global.play_again_prompt == global.play_again_prompt_no) {
                yes_cursor = 1;
                yes_color = c_dkgray;
                no_cursor = 2;
                no_color = c_yellow;
            }
            
            draw_rectangle_colour(128 - 14, 128, 192 - 12, 160 + 4, yes_color, yes_color, yes_color, yes_color, true);
            draw_text_outline_color(128 - 10, 128, yes_cursor, "YES", c_dkgray, yes_color);
            
            draw_rectangle_colour(416 + 10, 128, 480 + 2, 160 + 4, no_color, no_color, no_color, no_color, true);
            draw_text_outline_color(416 + 12, 128, no_cursor, "NO", c_dkgray, no_color);
            
            var coin_text =  "Time Score: " + string((400 - global.time) div 4) + "#Coins: " + string(PlayerStats.money) + "#Killed: " + string(PlayerStats.enemies_defeated) + "#Score: " +  string(calculate_game_score());
            draw_text((room_width / 2) - 120, room_height / 2 - 80, coin_text);
            break;
            
        case rm_game_menu:
            draw_set_font(fnt_choose_character)
            draw_text_outline_color(192, 32, 2, "Gemini Witches", c_dkgray, c_yellow);
            
            draw_text_outline_color(192, 160, 2, global.game_menu_selection_play, c_dkgray, c_yellow);
            
            draw_text_outline_color(192, 200, 2, global.game_menu_selection_options, c_dkgray, c_yellow);
            
            draw_text_outline_color(192, 240, 2, global.game_menu_selection_exit, c_dkgray, c_yellow);
            
            switch(global.game_menu_selection) {
                case global.game_menu_selection_play:
                    draw_rectangle_colour(188, 160, 278, 196, c_yellow, c_yellow, c_yellow, c_yellow, true);
                    break;
                case global.game_menu_selection_options:
                    draw_rectangle_colour(188, 200, 338, 236, c_yellow, c_yellow, c_yellow, c_yellow, true);
                    break;
                case global.game_menu_selection_exit:
                    draw_rectangle_colour(188, 240, 264, 276, c_yellow, c_yellow, c_yellow, c_yellow, true);
                    break;
            }
            
            break;
            
        case rm_pause_menu:
            draw_set_font(fnt_choose_character);
            draw_text_outline_color(room_width / 4 + 50, 32, 2, "Game Paused", c_dkgray, c_yellow);
            
            draw_set_font(-1);
            //draw_text_outline_color(224, 320, 1, "Element Points: " + string(PlayerStats.element_points), c_dkgray, c_yellow);
            break;
            
        case rm_cutscene:
            draw_set_font(-1);
            var start_or_enter = "";
            var gp_id = 0;
            if(gamepad_is_connected(gp_id)) {
                start_or_enter = "start";
            } else {
                start_or_enter = "enter";
            }
            draw_text_colour(350, 285, "Press " + start_or_enter + " to skip...", c_white, c_white, c_white, c_white, 1);
            break;
            
        case rm_boss_cutscene:
            break;
}

