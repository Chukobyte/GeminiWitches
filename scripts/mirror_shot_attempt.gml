///mirror_shot_attempt()

//Default to mirror shot for now
if(PlayerStats.soul_element_attack_timer <= 0) {
    var new_mirror_shot_attack = instance_create(x + sign(hspd), y, MirrorShot);
    //Assigns the same image_xscale to attack as player
    new_mirror_shot_attack.image_xscale = sign(image_xscale);
    new_mirror_shot_attack.fired = true;
    sprite_index = attack_sprite;
    PlayerStats.mp -= new_mirror_shot_attack.cost;
    PlayerStats.soul_element_attack_timer = PlayerStats.soul_element_attack_cooldown;
    return true;
} else {
    return false;
}
    
//Sets cooldown on mirror shot
PlayerStats.soul_element_attack_timer = PlayerStats.soul_element_attack_cooldown;

