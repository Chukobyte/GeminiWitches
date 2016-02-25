///player_enemy_collision()
var above_enemy = y < other.y + vspd;
var falling = vspd > 0

//TODO: make is_next_to_enemy check more accurate
var is_next_to_enemy1 = position_meeting(x + (sign(image_xscale) * 10), y, Enemy);
var is_next_to_enemy2 = position_meeting(x + (sign(image_xscale) * 10), y + 1, Enemy);
var is_next_to_enemy3 = position_meeting(x + (sign(image_xscale) * 10), y - 1, Enemy);
var is_next_to_enemy = is_next_to_enemy1 || is_next_to_enemy2 || is_next_to_enemy3;

if(above_enemy && falling ) {
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
            
            x += hspd;
            //y += vspd;
             
        }
    }
} else {
    if(state != player_hurt_state && invincibility_timer <= 0 ) {
        PlayerStats.hp -= 1;
        state = player_hurt_state;
        hurt_state_timer = hurt_state_timer_max;
        attacking = false;
        //x += sign(hspd) * 15;
    }
}
