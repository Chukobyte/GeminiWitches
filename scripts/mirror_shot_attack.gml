///mirror_shot_attack()

//Default to mirror shot for now
if(soul_element_attack_timer <= 0) {
    var new_mirror_shot_attack = instance_create(x + sign(hspd), y, MirrorShot);
    //Assigns the same image_xscale to attack as player
    new_mirror_shot_attack.image_xscale = sign(image_xscale);
    new_mirror_shot_attack.fired = true;
    sprite_index = attack_sprite;
    PlayerStats.mp -= new_mirror_shot_attack.cost;
    soul_element_attack_timer = soul_element_attack_cooldown;
    return true;
} else {
    return false;
}
    
//Sets cooldown on mirror shot
soul_element_attack_timer = soul_element_attack_cooldown;

