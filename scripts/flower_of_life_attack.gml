///flower_of_life_attack()

//Piecing Water Crystal attack for now


var earth_magic_attack = instance_create(x + sign(image_xscale) * 30, y - 30, FlowerOfLife);
//Assigns the same image_xscale to attack as player
earth_magic_attack.image_xscale = sign(image_xscale);
sprite_index = attack_sprite;
PlayerStats.mp -= earth_magic_attack.cost;
    
//Sets cooldown on magic attack
magic_attack_timer = magic_attack_cooldown;

