///hedgehog_attack_state()

//In the air
if(!place_meeting(x, y + 1, Solid)) {
    vspd += grav;
}

if(instance_exists(Player)) {

    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    if(dis <= sight_range) {
        sprite_index = spr_hedgehog_walk;
        image_speed = .5;
        
        //Move towards the player
        hspd += sign(lengthdir_x(spd, dir)) * 2;
    } else {
        sprite_index = spr_hedgehog_idle;
        image_speed = 0;
        hspd = 0;
    }
}

face_right_direction();
move(Solid);