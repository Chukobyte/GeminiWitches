///player_door_collision()
if(up && other.visible == true) {
    y = yprevious;
    // resets color
    image_blend = c_white;
    //state = player_exit_state;
    audio_stop_sound(snd_jump);
    audio_play_sound(snd_exit_door, 4, false);
    
    //for setting level completion global var
    switch(room) {
        case rm_earth_test:
            global.earth_level_completed = true;
            break;
        case rm_wind_test:
            global.wind_level_completed = true;
            break;
        case rm_fire_test:
            global.fire_level_completed = true;
            break;
        case rm_water:
            global.water_level_completed = true;
            break;
        default:
            break;
    }
    
    if(room != room_last && other.room_selected == "none") {
        room_goto_next();    
    } else {
        room_goto(other.room_selected);
        with(other) {
            instance_destroy();
        }
    }
}
