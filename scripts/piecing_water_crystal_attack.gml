///piecing_water_crystal_attack()

//Piecing Water Crystal attack for now


var water_magic_attack = instance_create(x + sign(hspd), y, PiecingWaterCrystal);
//Assigns the same image_xscale to attack as player
water_magic_attack.image_xscale = sign(image_xscale);
sprite_index = attack_sprite;
PlayerStats.mp -= water_magic_attack.cost;
    
//Sets cooldown on magic attack
soul_element_attack_timer = soul_element_attack_cooldown;

