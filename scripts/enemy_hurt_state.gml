///enemy_hurt_state
if(enemy_damage_timer > 0) {
    sprite_index = hurt_sprite;
    enemy_damage_timer--;
    
} else {
    state = previous_state;
}


//handles blending image red temporarily when damaged.
//Blends to white slightly before timer expires
if(enemy_damage_timer  > (enemy_damage_timer_max / 2)) {
    image_blend = c_red;    
} else {
    image_blend = c_white;    
}
