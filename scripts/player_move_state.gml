///player_move_state

get_player_input();

if(left) {
    sprite_index = spr_seika_walk
    image_xscale = -1;
    x -= spd;
    image_speed = .3;
} else if(right) {
    sprite_index = spr_seika_walk
    x += spd;
    image_xscale = 1;
    image_speed = .3;
} else {
    image_index = spr_seika_idle;
    state = player_idle_state;
}
