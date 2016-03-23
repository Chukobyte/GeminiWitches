///soul_element_attack()

//Default to mirror shot for now

var mirror_shot_attack = instance_create(x + sign(hspd), y, MirrorShot);
//Assigns the same image_xscale to attack as player
mirror_shot_attack.image_xscale = sign(image_xscale);
sprite_index = attack_sprite;
PlayerStats.mp -= mirror_shot_attack.cost;
    
//Sets cooldown on mirror shot
mirror_shot_attack_timer = mirror_shot_attack_cooldown;

