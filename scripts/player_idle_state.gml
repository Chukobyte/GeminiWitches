///player_idle_state
image_speed = 0;
get_player_input();

if(left || right) {
    state = player_move_state;
}
