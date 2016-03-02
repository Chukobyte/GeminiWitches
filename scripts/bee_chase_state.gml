///bee_chase_state()
if(instance_exists(Player)) {

    var dis = point_distance(x, y, Player.x, Player.y);
    chase_state_timer--;
    if(dis <= sight_range && chase_state_timer <= 0) {
        chase_state_timer = chase_state_timer_max;
        state = bee_prepare_swoop_state;
    }
    
    var dir = point_direction(x, y, Player.x, Player.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);
    
    //Change to the correct sprite
    sprite_index = spr_bee_fly;
    image_speed = 0.3;
    
    
    //Move
    face_right_direction();
    x += hspd;
    y += vspd;
//    move(Solid);
}

