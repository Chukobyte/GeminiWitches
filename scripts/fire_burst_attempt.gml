///fire_burst_attempt()

if(PlayerStats.mp > 0 && PlayerStats.soul_element_attack_timer <= 0) {
    //destroys previous instances
    with(FireBurst) {
        instance_destroy();
    }
    
    var fire_1 = instance_create(x - 32, y, FireBurst);
    var fire_2 = instance_create(x + 32, y, FireBurst);
    var fire_3 = instance_create(x, y - 32, FireBurst);
    var fire_4 = instance_create(x, y + 32, FireBurst);
    
    //sets place in rotation
    fire_1.orbit_speed = 0;
    fire_2.orbit_speed = 90;
    fire_3.orbit_speed = 180;
    fire_4.orbit_speed = 270;

    PlayerStats.mp -= fire_1.cost;
    PlayerStats.soul_element_attack_timer = PlayerStats.soul_element_attack_cooldown;

    return true;
} else {
    return false;
}
