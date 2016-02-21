///player_enemy_collision()
var above_enemy = y < other.y + vspd;
var falling = vspd > 0

if(above_enemy && falling ) {
    if(!place_meeting(x, yprevious, Solid)) {
        y = yprevious;
    }
    
    while(!place_meeting(x, y + 1, other)) {
        y++;
    }
    
    //Kill the enemy
    with(other) {
        instance_destroy();
    }
    
    //Bounce off the enemy
    vspd = (jump_height / 1.5);
    
    //Play the sound
    //audio_play_sound(snd_step, 6, false);
}
