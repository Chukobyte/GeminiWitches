///s_button_attack()

//Special Attack for now

if(magic_attack_timer <= 0) {
    var nw_magic_attack = instance_create(x + sign(hspd), y, MagicAttack);
    //Assigns the same image_xscale to attack as player
    nw_magic_attack.image_xscale = sign(image_xscale);
    sprite_index = attack_sprite;
    
    //Sets cooldown on magic attack
    magic_attack_timer = magic_attack_cooldown;
}
