///player_lava_collision()
if(state != player_death_state) {
    vspd = -18;
    if(invincibility_timer < 0) {
        player_take_damage(1, false, 0);
        invincibility_timer = invincibility_timer_max;
    }
}
