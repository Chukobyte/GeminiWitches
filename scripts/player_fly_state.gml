///player_fly_state

//temp cost for fly
PlayerStats.mp -= 0.02;

sprite_index = fly_sprite;
image_speed = fly_sprite_speed;


if(hold_up || down) {
    var up_or_down = down - hold_up;
    vspd += up_or_down;
    
    vspd = cap_at_max_spd(vspd, spd);
} 

if(right || left) {
    //add 1 or -1 depending on which direction is pressed
    hspd += (right-left) * acc;
    hspd = cap_at_max_spd(hspd, spd); 
    
} else {
    apply_friction(.1);
}

if((wind_magic_attack_button && fly_delay <= 0) || PlayerStats.mp <= 0){
    state = player_move_state;
    fly_delay = 10
}

//Change sprite direction based on direction
correct_sprite_direction();

//Move
move(Solid);
