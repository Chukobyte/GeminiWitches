///a_button_attack()

if(alarm[0] <= 0) {
    var nw_magic_attack = instance_create(x + sign(hspd), y, MagicAttack);
    //Assigns the same image_xscale to attack as player
    nw_magic_attack.image_xscale = sign(image_xscale);
    
    //Sets cooldown on magic attack
    alarm[0] = room_speed * action_cooldown;
}

