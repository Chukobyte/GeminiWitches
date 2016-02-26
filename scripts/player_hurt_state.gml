///player_hurt_state()
if(hurt_state_timer > 0) {
    hurt_state_timer--;
    sprite_index = hurt_state_sprite;
    image_speed = 0;
    image_blend = c_red;
     
    //When player dies
    if(PlayerStats.hp <= 0) {
        //Sprite image_speed is set to 0 when animation ends
        sprite_index = death_state_sprite;
        image_speed = death_state_sprite_speed;
        image_blend = c_white;
        hspd = 0;
        vspd = 0;
        death_state_timer = death_state_timer_max;
        state = player_death_state;
    }

} else {
    image_blend = c_white;
    state = player_move_state;
    invincibility_timer = invincibility_timer_max;
}
