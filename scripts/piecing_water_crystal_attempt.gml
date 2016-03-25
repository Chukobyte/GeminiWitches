///piecing_water_crystal_attempt()

//Piecing Water Crystal attack for now

if(PlayerStats.mp > 0 && PlayerStats.soul_element_attack_timer <= 0) {
    var water_magic_attack = instance_create(x + sign(hspd), y, PiecingWaterCrystal);
    //Assigns the same image_xscale to attack as player
    water_magic_attack.image_xscale = sign(image_xscale);
    sprite_index = attack_sprite;
    PlayerStats.mp -= water_magic_attack.cost;
    
    //Sets cooldown on magic attack
    PlayerStats.soul_element_attack_timer = PlayerStats.soul_element_attack_cooldown;
    return true;
} else {
    return false;
}
