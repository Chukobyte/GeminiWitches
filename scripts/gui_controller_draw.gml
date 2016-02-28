///gui_controller_draw()

//Sets gui size based on view
display_set_gui_size(view_wview[0], view_hview[0]);

switch(room) {
    /* default will be the level rooms for now
    * will display health, magic, lives, etc
    */
    default:
        var hpAmount = (PlayerStats.hp / PlayerStats.maxhp) * 100;
        var mpAmount = (PlayerStats.mp / PlayerStats.maxmp) * 100;
        draw_healthbar(10, 10, 20, 40, hpAmount, c_black, c_red, c_lime, 3, true, true)
        draw_healthbar(21, 10, 31, 40, mpAmount, c_black, c_navy, c_navy, 3, true, true)
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
            
            draw_rectangle_colour(128 - 4, 128, 192 - 4, 160 + 4, c_yellow, c_yellow, c_yellow, c_yellow, true);
            draw_text_outline_color(128, 128, 2, "YES", c_dkgray, c_yellow);
            
            draw_rectangle_colour(416 - 2, 128, 480 - 10, 160 + 4, c_yellow, c_yellow, c_yellow, c_yellow, true);
            draw_text_outline_color(416, 128, 2, "NO", c_dkgray, c_yellow);
            
            var coin_text = "Coins: " + string(PlayerStats.money) + "#Score: " +  string(PlayerStats.money);
            draw_text((room_width / 2) - 80, room_height / 2, coin_text);
            break;
}

