///player_health_drop_collision()
PlayerStats.hp += 2;
if(PlayerStats.hp > PlayerStats.maxhp) {
    PlayerStats.hp = PlayerStats.maxhp;
}

//sound
if(!audio_is_playing(snd_hp_mp_pickup)) {
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .4);
    audio_emitter_pitch(audio_em, .8);
    audio_play_sound_on(audio_em, snd_hp_mp_pickup, false, 7);
}

with(other) {
    instance_destroy();
}
