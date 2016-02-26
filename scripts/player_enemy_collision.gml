///player_enemy_collision()
var above_enemy = y < other.y + vspd;
var falling = vspd > 0

/*
* Checks if next to the enemy and loops through
* y cordinates to check if enemy is above or below player.
*/
var is_next_to_enemy = false;
for(i = -10; i <= 10; i++) {
    if(position_meeting(x + (sign(image_xscale) * 10), y + i, Enemy)) {
        is_next_to_enemy = true;
    }
}

if(above_enemy && falling && state != player_death_state) {
    if(!place_meeting(x, yprevious, Solid)) {
        y = yprevious;
    }
    
    while(!place_meeting(x, y + 1, other)) {
        y++;
    }
        
    //Bounce off the enemy
    vspd = (jump_height / 1.5);
    
} else if(attacking && is_next_to_enemy) {
    with(other) {
        if(state != hurt_state) {
            hp -= 1;
            previous_state = state;
            state = hurt_state;
            enemy_damage_timer = enemy_damage_timer_max;  
            
            //Pushes the enemy back
            var dir = point_direction(x, y, Player.x, Player.y);
            hspd = -(lengthdir_x(15, dir));
            //vspd = lengthdir_y(20, dir);
            
            if(!can_go_through_walls) {
                move(Solid);
            } else {
                x += hspd;
            }
        }
    }
} else {
    if(state != player_hurt_state && state != player_death_state && invincibility_timer <= 0) {
        PlayerStats.hp -= other.enemy_attack;
        state = player_hurt_state;
        hurt_state_timer = hurt_state_timer_max;
        attacking = false;
        //x += sign(hspd) * 15;
    }
}
