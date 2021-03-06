///bee_chase_state()
if(instance_exists(Player)) {
    
    //Change to the correct sprite
    sprite_index = spr_bee_fly;
    image_speed = 0.3;
    
    var dis = point_distance(x, y, Player.x, Player.y);
    chase_state_timer--;
    
    if(dis <= sight_range && chase_state_timer <= 0) {
        chase_state_timer = chase_state_timer_max;
        state = bee_prepare_swoop_state;
    } else if(dis <= sight_range * 2) {
        var dir = point_direction(x, y, Player.x, Player.y);
        hspd = lengthdir_x(spd, dir);
        vspd = lengthdir_y(spd, dir);
    
        //Move
        correct_sprite_direction();
        x += hspd;
        y += vspd;
    }
    
}

