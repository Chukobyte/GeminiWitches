///player_swim_state

if(hspd == 0 && vspd == 0) {
    sprite_index = swim_idle_sprite;
    image_speed = 0;
} else {
    sprite_index = swim_anim_sprite;
    image_speed = swim_anim_sprite_speed;
}

//for random bubbles
bubble_timer--
if(bubble_timer <= 0) {
    var odds = irandom(8);
    if(odds == 0) {
        instance_create(x + image_xscale * 2, y, Bubble);
        bubble_timer = bubble_timer_max;  
    }
}

if(!place_meeting(x, y + 1, Solid)){
    vspd += .15;
} else {
    //adds friction when hitting floor
    apply_friction(acc);
}

if(!place_meeting(x + image_xscale, y, Solid) && hspd != 0) {
    apply_friction(.3);
}

if(up || down) {
    var swim_height = 4;
//    up = sign(up) * swim_height;
    var up_or_down = down - up;
    vspd += up_or_down * swim_height;
    vspd = cap_at_max_spd(vspd, spd);
    if(up_or_down == -1 && global.options_menu_sound_selection == "ON") {
        var audio_em = audio_emitter_create();
        audio_emitter_gain(audio_em, .07);
        //audio_emitter_pitch(audio_em, .5);
        audio_play_sound_on(audio_em, snd_water_swim, false, 6);
    }
    
}

if(right || left) {
    //add 1 or -1 depending on which direction is pressed
    //if(!place_meeting(x, y + 1, Solid)) {
        hspd += ((right-left) * acc) / 2;
    //}
    
    hspd = cap_at_max_spd(hspd, spd); 
    
}

correct_sprite_direction_move();
move(Solid);
