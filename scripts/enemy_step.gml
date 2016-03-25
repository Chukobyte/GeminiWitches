///enemy_step()
if(global.game_paused) {
    image_speed = 0;
    return -1;
}

script_execute(state);
if(hp <= 0) {
    instance_destroy();
}

if(enemy_damaged) {
    image_blend = c_red;
    enemy_damage_timer--;
} 

if(enemy_damage_timer <= 0) {
    image_blend = c_white;
    enemy_damaged = false;
}
