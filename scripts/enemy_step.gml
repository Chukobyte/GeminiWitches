///enemy_step()
if(global.game_paused) {
    image_speed = 0;
    return -1;
}

script_execute(state);
if(hp <= 0) {
    PlayerStats.level_exp += exp_given;
    instance_destroy();
}
