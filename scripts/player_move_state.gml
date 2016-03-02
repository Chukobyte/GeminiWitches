///player_move_state

if(!place_meeting(x, y + 1, Solid)){
    vspd += grav;
    
    //Player is in the air
    
    //Determine sprite based on whether rising or falling in jump
    if(attacking) {
        sprite_index = jump_sprite_attack;
        image_speed = jump_sprite_attack_speed;
        //mask_index = spr_player_attack_mask;
    } else {
        image_speed = jump_sprite_speed;
        //mask_index = spr_player_mask;
        
        if(vspd > 0) {
            sprite_index = jump_sprite;
        } else {
            sprite_index = jump_sprite_released;
        }
    }
    
    //Control the jump height
    if(up_release && (vspd < -6)) {
        vspd = -6;
    }
} else {
    vspd = 0;
    
    //Jumping code
    if(up) {
        vspd = jump_height + PlayerStats.jump_height;
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .07);
        audio_emitter_pitch(audio_em, .5);
        audio_play_sound_on(audio_em, snd_jump, false, 5);
    }
    
    //Player is on the ground
    if(attacking == false) {  
        //mask_index = spr_player_mask;      
        if(hspd == 0) {
            sprite_index = idle_sprite;
            image_speed = idle_sprite_speed;
        } else {
            sprite_index = walk_animation_sprite;
            image_speed = walk_animation_speed;
            }
    } else {
        //mask_index = spr_player_attack_mask;
        if(hspd == 0) {
            sprite_index = attack_sprite;
            image_speed = attack_sprite_speed;
        } else {
            sprite_index = walk_animation_attack_sprite;
            image_speed = walk_animation_attack_speed;
        }
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
    
} else {
        apply_friction(acc);
}

//adds 6 to attack timer for slight delay
if(attack_button && (attack_timer + 6) <= 0) {
    a_button_attack();
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .25);
    audio_play_sound_on(audio_em, snd_punch, false, 6);
    
}

//s_button attack
if(magic_attack_timer <= 0 && PlayerStats.mp > 0) {
    if(magic_attack_button){
        s_button_attack();
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .3);
        //audio_emitter_pitch(audio_em, .5);
        audio_play_sound_on(audio_em, snd_magic_shot, false, 6);
    } else if(water_magic_attack_button && PlayerStats.water_unlocked){
        x_button_attack();;
    } else if(earth_magic_attack_button && PlayerStats.earth_unlocked) {
        z_button_attack();
    } else if(wind_magic_attack_button && fly_delay <= 0 && PlayerStats.wind_unlocked) {
        state = player_fly_state;
        vspd = 0;
        fly_delay = 10;
    }
    
    
}

//Change sprite direction based on direction
correct_sprite_direction();

//Move
move(Solid);
