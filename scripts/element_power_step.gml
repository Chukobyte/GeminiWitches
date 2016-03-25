///element_power_step()

if(global.game_paused) {
    image_speed = 0;
    return -1;
} else {
    duration--;
}

if(duration <= 0) {
    instance_destroy();
}

if(attack_script != "none") {
    script_execute(attack_script);
}
