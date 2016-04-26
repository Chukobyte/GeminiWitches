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
    
    //double jump
    if(up && double_jump_enabled && PlayerStats.wind_level > 0) {
        double_jump_enabled = false;
        part_particles_create(global.particle_system, x, y + 1, global.particle2, 1);
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .09);
        //audio_emitter_pitch(audio_em, .5);
        audio_play_sound_on(audio_em, snd_second_jump, false, 6);
        vspd = jump_height;
    }
} else {
    double_jump_enabled = true;
    vspd = 0;
    
    //Jumping code
    if(up) {
        vspd = jump_height + PlayerStats.jump_height;
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .07);
        audio_emitter_pitch(audio_em, .5);
        audio_play_sound_on(audio_em, snd_jump, false, 6);
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
    
    hspd = cap_at_max_spd(hspd, spd);
    
} else {
        apply_friction(acc);
}

//adds 6 to attack timer for slight delay
if(attack_button && (attack_timer + 6) <= 0) {
    a_button_attack();
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .25);
    audio_play_sound_on(audio_em, snd_punch, false, 6);
    PlayerStats.charge_time = 0;    
    sprite_color = c_white;
}


//TODO: Attack scripts return if successful or not
if(soul_element_attack_button_pressed) {
    if(PlayerStats.charge_time < PlayerStats.charge_time_max) {
        PlayerStats.charge_time += 1;
        if(PlayerStats.charge_time > 25) {
            part_particles_create(global.particle_system, x, y, global.particle1, 1);
        }
    } else {
        sprite_color = c_orange;    
    }    
}

if(soul_element_attack_button_released) {
    var success = mirror_shot_attempt();
    if(success) {
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .3);
        //audio_emitter_pitch(audio_em, .5);
        audio_play_sound_on(audio_em, snd_magic_shot, false, 6);
    }
    PlayerStats.charge_time = 0;
    sprite_color = c_white;
} else if(water_magic_attack_button && PlayerStats.water_level > 0){
    var success = piecing_water_crystal_attempt();
    if(success) {
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .2);
        audio_emitter_pitch(audio_em, 1.2);
        audio_play_sound_on(audio_em, snd_water_shot, false, 5);
    }
} else if(earth_magic_attack_button && PlayerStats.earth_level > 0) {
    var success = flower_of_life_attempt();
} else if(fire_magic_attack_button && PlayerStats.fire_level > 0) {
    var success = fire_burst_attempt();
    if(success) {
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .3);
        audio_play_sound_on(audio_em, snd_fire, false, 5);
    }
} else if(wind_magic_attack_button && fly_delay <= 0 && PlayerStats.wind_level > 0) {
        audio_stop_sound(snd_jump);
        state = player_fly_state;
        vspd = 0;
        fly_delay = 10;            
        PlayerStats.charge_time = 0;
        sprite_color = c_white;
}    

//Change sprite direction based on direction
correct_sprite_direction();

//Move
move(Solid);
