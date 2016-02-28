///special_attacks_enemy_collision()
if(affects_enemy) {
    var damage_done = damage;
    with(other) {
        if(state != hurt_state){
            hp -= damage_done;
            previous_state = state;
            state = hurt_state;
            enemy_damage_timer = enemy_damage_timer_max;
        }
    }
    instance_destroy();
}
