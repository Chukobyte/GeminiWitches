///fish_move_state()
move_timer--;

x += image_xscale;

if(move_timer <= 0) {
    move_timer = move_timer_max;
    image_xscale = -image_xscale;
}
