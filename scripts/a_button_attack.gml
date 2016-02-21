///a_button_attack()

//Regular punch attack for now

if(attack_timer <= 0) {
    sprite_index = attack_sprite;
    attack_timer = attack_cooldown;
}
