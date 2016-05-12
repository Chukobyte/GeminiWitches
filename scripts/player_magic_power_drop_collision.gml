///player_magic_power_drop_collision()
PlayerStats.mp += 2;
if(PlayerStats.mp > PlayerStats.maxmp) {
    PlayerStats.mp = PlayerStats.maxmp;
}

//sound
if(!audio_is_playing(snd_hp_mp_pickup) && global.options_menu_sound_selection == "ON") {
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .4);
    audio_emitter_pitch(audio_em, .8);
    audio_play_sound_on(audio_em, snd_hp_mp_pickup, false, 7);
}

with(other) {
    instance_destroy();
}
