///player_enemy_collision()
var above_enemy = y < other.y + vspd;
var falling = vspd > 0
var is_next_to_enemy = place_meeting(x + (sign(hspd) * 2), y, Enemy);

if(above_enemy && falling ) {
    if(!place_meeting(x, yprevious, Solid)) {
        y = yprevious;
    }
    
    while(!place_meeting(x, y + 1, other)) {
        y++;
    }
    
    //Kill the enemy
    //with(other) {
    //    instance_destroy();
    //}
    
    //Bounce off the enemy
    vspd = (jump_height / 1.5);
    
    //Play the sound
    //audio_play_sound(snd_step, 6, false);
} else if(attacking && is_next_to_enemy) {
    //TODO: only damage enemy if facing him
    with(other) {
        if(state != hurt_state) {
            hp -= 1;
            previous_state = state;
            state = hurt_state;
            enemy_damage_timer = enemy_damage_timer_max;  
            
            var dir = point_direction(x, y, Player.x, Player.y);
            hspd = -(lengthdir_x(15, dir));
            //vspd = lengthdir_y(20, dir);
            
            x += hspd;
            //y += vspd;
             
        }
    }
} else {
    if(state != player_hurt_state && invincibility_timer <= 0 ) {
        PlayerStats.hp -= 1;
        state = player_hurt_state;
        hurt_state_timer = hurt_state_timer_max;
        //x += sign(hspd) * 15;
    }
}
