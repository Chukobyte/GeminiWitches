///game_controller_step()
switch(room) {
    default:
        break;
    case rm_play_again:
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
