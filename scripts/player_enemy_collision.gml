///player_enemy_collision()
var above_enemy = y < other.y + vspd;
var falling = vspd > 0

/*
* Checks if next to the enemy and loops through
* y cordinates to check if enemy is above or below player.
*/
var is_next_to_enemy = false;
var player_reach = 10;
for(i = -20; i <= 20; i++) {
    if(position_meeting(x + (sign(image_xscale) * player_reach), y + i, Enemy)) {
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
    var attack_damage = PlayerStats.attack;
    with(other) {
        if(state != hurt_state) {
            hp -= attack_damage;
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
        player_take_damage(other.enemy_attack, true); 
    }
}
