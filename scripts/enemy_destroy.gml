///enemy_destroy()

var audio_em = audio_emitter_create();
audio_emitter_gain(audio_em, .3);
audio_play_sound_on(audio_em, snd_explosion, false, 5);

repeat(5) {
    var rand_num = random_range(3,6);
    
    instance_create(x - rand_num, y - rand_num, Smoke);
    instance_create(x + rand_num, y + rand_num, Smoke);
    instance_create(x - rand_num, y + rand_num, Smoke);
    instance_create(x + rand_num, y - rand_num, Smoke);
}

//Drops a coin and makes sure the Player can collect
if(!position_meeting(x, y, Solid)) {
    instance_create(x, y, coin_type_dropped);
} else {
    //Checks north west and south east diagonally
    var terminate_loop = false;
    for(var xx = 1; xx <= 25; xx++) {
        if(!terminate_loop) {
            for(var yy = 1; yy <= 25; yy++) {
                if(!position_meeting(x - xx, y - yy, Solid)) {
                    instance_create(x - xx, y - yy, coin_type_dropped);
                    terminate_loop = true;
                    break;
                } else if(!position_meeting(x + xx, y + yy, Solid)) {
                    instance_create(x + xx, y + yy, coin_type_dropped);
                    terminate_loop = true;
                    break;
                }
            }
        }   
    }
}
