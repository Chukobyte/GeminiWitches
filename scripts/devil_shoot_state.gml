///devil_shoot_state()

if(instance_exists(Player)) {
    //In the air
    if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
    }
    
    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    image_blend = c_red;
    if(dis <= sight_range) {
        sprite_index = spr_devil_move;   
        image_speed = 0.2;
        //run away from player
        hspd -= sign(lengthdir_x(spd, dir)) * spd;
    } else {
        hspd = 0;
        sprite_index = spr_devil_idle;
        image_speed = 0;
        //more sight for shooting
        if(dis <= sight_range + 60 && devil_shot_timer <= 0) {
            var shot_hspd = lengthdir_x(2, dir);
            var shot_vspd = lengthdir_y(2, dir);
            var devil_shot = instance_create(x, y, DevilShot);
            devil_shot.hspd = shot_hspd;
            devil_shot.vspd = shot_vspd;
            devil_shot.fired = true;
            devil_shot_timer = devil_shot_timer_max;
        }
    }
    
    correct_sprite_direction();
    //Jump if hits a wall
    if(!place_meeting(x + sign(image_xscale), y, Solid)) {
        move(Solid);
    } else {
        devil_wall_bounce();
    }
    
}
