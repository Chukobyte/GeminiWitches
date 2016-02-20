///amaya_portait_step()

//Checks if portrait is clicked on with left mouse button
if mouse_check_button_pressed(mb_left)  {
    if (mouse_x>bbox_left && mouse_x<bbox_right 
    && mouse_y>bbox_top && mouse_y<bbox_bottom) {
        global.player_1_selected = Amaya;
        room_goto(rm_main);
    } 
}
