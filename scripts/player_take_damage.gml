///player_take_damage(damage, switch_to_hurt_state, knock_back_amount)
var damage = argument0;
var switch_to_hurt_state = argument1;
var knockback_amount = argument2;
PlayerStats.hp -= damage;

//healing 
if(sign(damage) == -1) {
    //check to see if healing is above max health
    if(PlayerStats.hp > PlayerStats.maxhp) {
        PlayerStats.hp = PlayerStats.maxhp;
    }
} else if(sign(damage) == 1) {
    //damaging attack
    attacking = false;
}



  
//If player dies
if(damage > 0) {
    if(PlayerStats.hp > 0 && switch_to_hurt_state) {
        hurt_state_timer = hurt_state_timer_max;
        state = player_hurt_state;
    } else if(PlayerStats.hp <= 0) {
        //Sprite image_speed is set to 0 when animation ends
        sprite_index = death_state_sprite;
        image_speed = death_state_sprite_speed;
        image_blend = c_white;
        death_state_timer = death_state_timer_max;
        state = player_death_state;
    }
} else {
    //add healing logic
}

if(abs(knockback_amount) > 0) {
    //adds knock back to opposite direction
    var temp_hspd = hspd;
    var temp_vspd = vspd;
    hspd -= sign(image_xscale) * knockback_amount;
    vspd = 0;
    move(Solid);
    hspd = temp_hspd;
    vspd = temp_vspd;
}    
