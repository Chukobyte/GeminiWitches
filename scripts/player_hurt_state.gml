///player_hurt_state()
if(hurt_state_timer > 0) {
    hurt_state_timer--;
    sprite_index = hurt_state_sprite;
    image_speed = 0;
    image_blend = c_red;

} else {
    image_blend = c_white;
    hurt_state_timer = hurt_state_timer_max;
    state = player_move_state;
    invincibility_timer = invincibility_timer_max;
}
