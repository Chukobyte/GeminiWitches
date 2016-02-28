///player_fly_state

//temp cost for fly
PlayerStats.mp -= 0.02;

sprite_index = fly_sprite;
image_speed = fly_sprite_speed;

if(up || down) {
    vspd += (down - up)
    
    if(vspd > spd) {
        vspd = spd + PlayerStats.spd;
    }
    
    if(vspd < -spd) {
        vspd = -spd - PlayerStats.spd;
    }
}

if(right || left) {
    //add 1 or -1 depending on which direction is pressed
    hspd += (right-left) * acc;
    
    if(hspd > spd) {
        hspd = spd + PlayerStats.spd;
    }
    
    if(hspd < -spd) {
        hspd = -spd - PlayerStats.spd;
    } 
    
}

if((wind_magic_attack_button && fly_delay <= 0) || PlayerStats.mp <= 0){
    state = player_move_state;
    fly_delay = 10
}

//Change sprite direction based on direction
if(hspd != 0) {
    image_xscale = sign(hspd);
}

//Move
move(Solid);
