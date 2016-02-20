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
        
        //Draw character stats
        draw_set_halign(fa_left);
        draw_set_valign(fa_left);
        draw_text(160 - 32, 192 - 16, "Attack: 2#Speed: 3");
        draw_text(416 - 32, 192 - 16, "Attack: 3#Speed: 2");
        
        break;
}

