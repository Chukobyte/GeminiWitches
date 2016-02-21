///gui_controller_draw()

switch(room) {
    default:
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
}

