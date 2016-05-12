///player_coin_collision()

PlayerStats.money += other.value;

if(global.options_menu_sound_selection == "ON") {
    //Same pickup sound as gems but with a higher pitch
    randomize();
    var odds = irandom(2);
    var rand_pitch = -1;
    switch(odds) {
        case 0:
            rand_pitch = 0.98;
            break;
        case 1:
            rand_pitch = 1;
            break;
        case 2:
            rand_pitch = 1.02;
            break;
    }
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .7);
    audio_emitter_pitch(audio_em, rand_pitch);
    audio_play_sound_on(audio_em, snd_coin_pickup, false, 5);
}

with(other) {
    instance_destroy();
}
