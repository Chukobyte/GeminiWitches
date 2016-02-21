///player_move_state

if(!place_meeting(x, y + 1, Solid)){
    vspd += grav;
    
    //Player is in the air
    
    //Sets direction of sprite
    image_index = (vspd > 0);
    
    //Determine sprite based on whether rising or falling in jump
    if(vspd > 0) {
        sprite_index = jump_sprite;
        image_speed = jump_sprite_speed;
    } else {
        sprite_index = jump_sprite_released;
        image_speed = jump_sprite_speed;
    }
    
    //Control the jump height
    if(up_release && (vspd < -6)) {
        vspd = -6;
    }
} else {
    vspd = 0;
    
    //Jumping code
    if(up) {
        vspd = jump_height;
    }
    
    //Player is on the ground
    if(hspd == 0) {
        sprite_index = idle_sprite;
        image_speed = idle_sprite_speed;
    } else {
        sprite_index = walk_animation_sprite;
        image_speed = walk_animation_speed;
    }
}

if(right || left) {
    //add 1 or -1 depending on which direction is pressed
    hspd += (right-left) * acc;
    
    if(hspd > spd) {
        hspd = spd;
    }
    
    if(hspd < -spd) {
        hspd = -spd;
    } 
    
} else {
        apply_friction(acc);
}

if(attack_button) {
    a_button_attack();
}

//s_button attack
if(magic_attack_button) {
    s_button_attack();
}

//Change sprite direction based on direction
if(hspd != 0) {
    image_xscale = sign(hspd);
}

//Move
move(Solid);
