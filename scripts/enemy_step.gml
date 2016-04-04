///enemy_step()
if(global.game_paused) {
    image_speed = 0;
    return -1;
}

script_execute(state);

if(enemy_damaged) {
    enemy_damaged_timer--;
    image_blend = c_red;
    
    if(enemy_damaged_timer <= 0) {
        image_blend = c_white;
        enemy_damaged = false;
    }
}

if(hp <= 0) {
    PlayerStats.level_exp += exp_given;
    instance_destroy();
}
