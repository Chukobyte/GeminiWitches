///player_door_collision()
if(up && other.visible == true) {
    y = yprevious;
    //state = player_exit_state;
    audio_stop_sound(snd_jump);
    audio_play_sound(snd_exit_door, 4, false);
    
    if(room != room_last && other.room_selected == "none") {
        room_goto_next();    
    } else {
        room_goto(other.room_selected);
        with(other) {
            instance_destroy();
        }
    }
}
