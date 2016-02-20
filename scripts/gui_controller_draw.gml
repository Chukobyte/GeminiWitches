///gui_controller_draw()

switch(room) {
    default:
        break;
    case rm_choose_character:
        
        //Draw text
        draw_set_font(fnt_choose_character);
//        draw_text(160 - 32, 32, "CHOOSE YOUR CHARACTER");
        var chooseText = "CHOOSE YOUR CHARACTER!!!";
        draw_text_outline_color(96, 32, 2, chooseText, c_dkgray, c_yellow); 
    
        //Draw clickable chacters
        instance_create(160, 96, SeikaPortrait);
        instance_create(416, 96, AmayaPortrait);
        
        break;
}

