///flower_of_life_attempt()

//Piecing Water Crystal attack for now

if(PlayerStats.mp > 0 && PlayerStats.soul_element_attack_timer <= 0) {
    var earth_magic_attack = instance_create(x + sign(image_xscale) * 30, y - 30, FlowerOfLife);
    //Assigns the same image_xscale to attack as player
    earth_magic_attack.image_xscale = sign(image_xscale);
    sprite_index = attack_sprite;
    PlayerStats.mp -= earth_magic_attack.cost;    
    PlayerStats.soul_element_attack_timer = PlayerStats.soul_element_attack_cooldown;

    return true;
} else {
    return false;
}

