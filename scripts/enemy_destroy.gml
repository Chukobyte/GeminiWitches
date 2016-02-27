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
    
    /*
    instance_create(x - 5, y - 5, Smoke);
    instance_create(x + 5, y + 5, Smoke);
    instance_create(x - 5, y + 5, Smoke);
    instance_create(x + 5, y - 5, Smoke);
    */
}
