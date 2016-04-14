///gui_controller_draw()

//Sets gui size based on view
display_set_gui_size(view_wview[0], view_hview[0]);

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
        
        draw_text_colour(10, 280, "Level: " + string(PlayerStats.level), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
        //debug
        if(global.debug) {
            draw_text_colour(400, 32, "fps: " + string(fps), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1); 
            draw_text_colour(432, 32, PlayerStats.charge_time, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);   
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
            
            draw_rectangle_colour(128 - 4, 128, 192 - 4, 160 + 4, yes_color, yes_color, yes_color, yes_color, true);
            draw_text_outline_color(128, 128, yes_cursor, "YES", c_dkgray, yes_color);
            
            draw_rectangle_colour(416 - 2, 128, 480 - 10, 160 + 4, no_color, no_color, no_color, no_color, true);
            draw_text_outline_color(416, 128, no_cursor, "NO", c_dkgray, no_color);
            
            var coin_text = "Coins: " + string(PlayerStats.money) + "#Score: " +  string(PlayerStats.money);
            draw_text((room_width / 2) - 80, room_height / 2, coin_text);
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
            draw_text_outline_color(224, 320, 1, "Element Points: " + string(PlayerStats.element_points), c_dkgray, c_yellow);
            break;
            
        case rm_cutscene:
            break;
}

