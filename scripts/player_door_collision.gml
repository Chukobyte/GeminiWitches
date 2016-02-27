///player_door_collision()
if(up && other.visible == true) {
    y = yprevious;
    state = player_exit_state;
    audio_stop_sound(snd_jump);
    audio_play_sound(snd_exit_door, 4, false);
}
