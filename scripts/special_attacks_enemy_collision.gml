///special_attacks_enemy_collision()
with(other) {
    if(state != hurt_state){
        hp -= 1;
        previous_state = state;
        state = hurt_state;
        enemy_damage_timer = enemy_damage_timer_max;
    }
}
instance_destroy();
