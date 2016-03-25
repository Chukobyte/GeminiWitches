///element_power_step()

if(global.game_paused) {
    image_speed = 0;
    return -1;
}

if(attack_script != "none") {
    script_execute(attack_script);
}
