///devil_idle_state()
sprite_index = spr_devil_idle;
devil_shot_timer--;

if(instance_exists(Player)) {
    //In the air
    if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
    }
    
    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    if(dis <= sight_range) {
        //state = devil_move_state;   
        image_blend = c_red;
        //run away from player
        hspd -= lengthdir_x(spd, dir);
    } else {
        hspd = 0;
        image_blend = c_white;
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
    
    move(Solid);
    
}
