///player_swim_state

//if(hspd == 0) {
    sprite_index = swim_idle_sprite;
    image_speed = 0;
//} else if

if(!place_meeting(x, y + 1, Solid)){
    vspd += .3;
} else {
    //adds friction when hitting floor
    apply_friction(.1);
}

if(!place_meeting(x + image_xscale, y, Solid) && hspd != 0) {
    apply_friction(.3);
}

if(hold_up || down) {
    var up_or_down = down - hold_up;
    vspd += up_or_down;
    
    if(vspd > spd) {
        vspd = spd;
    }
    
    if(vspd < -spd) {
        vspd = -spd;
    }
} 

if(right || left) {
    //add 1 or -1 depending on which direction is pressed
    if(!place_meeting(x, y + 1, Solid)) {
        hspd += (right-left) * acc;
    }
    
    if(hspd > spd) {
        hspd = spd;
    }
    
    if(hspd < -spd) {
        hspd = -spd;
    } 
    
}

correct_sprite_direction_move();
move(Solid);
