///player_coin_collision()

PlayerStats.money += other.value;

//Same pickup sound as gems but with a higher pitch
var audio_em = audio_emitter_create();
audio_emitter_gain(audio_em, .7);
audio_play_sound_on(audio_em, snd_coin_pickup, false, 5);

with(other) {
    instance_destroy();
}
