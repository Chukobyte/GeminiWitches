///s_button_attack()

//Magic Attack for now


var nw_magic_attack = instance_create(x + sign(hspd), y, MagicAttack);
//Assigns the same image_xscale to attack as player
nw_magic_attack.image_xscale = sign(image_xscale);
sprite_index = attack_sprite;
PlayerStats.mp -= nw_magic_attack.cost;
    
//Sets cooldown on magic attack
magic_attack_timer = magic_attack_cooldown;

