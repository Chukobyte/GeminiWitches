///devil_shoot_state()

if(instance_exists(Player)) {
    //In the air
    if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
    }
    
    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    
    if(dis <= sight_range) {
        sprite_index = asset_get_index("spr_devil_move_" + sprite_color)  ;   
        image_speed = 0.2;
        image_blend = c_red;
        //run away from player
        hspd -= sign(lengthdir_x(acc, dir)) * acc;
    } else if(dis <= sight_range + 60) {
        apply_friction(.2)
        if(devil_shot_timer <= 0) {
            var shot_hspd = lengthdir_x(spd, dir);
            var shot_vspd = lengthdir_y(spd, dir);
            var devil_shot = instance_create(x, y, DevilShot);
            devil_shot.hspd = shot_hspd;
            devil_shot.vspd = shot_vspd;
            devil_shot.fired = true;
            devil_shot_timer = devil_shot_timer_max;
        }
        
        if(hspd == 0) {
            sprite_index = asset_get_index("spr_devil_idle_" + sprite_color)  ;
            image_speed = 0;
        }
    }
    
    if(hspd > spd) {
        hspd = spd;
    }
    
    if(hspd < -spd) {
        hspd = -spd;
    } 
    correct_sprite_direction();
    //Jump if hits a wall or ledge
    var touching_wall = place_meeting(x + sign(image_xscale), y, Solid);
    var touching_ledge = "";
    if(image_xscale == 1) {
        touching_ledge = position_meeting(bbox_right + 1, bbox_bottom + 1, Solid);
    } else {
        touching_ledge = position_meeting(bbox_left - 1, bbox_bottom + 1, Solid);
    }
    if(!touching_wall || !touching_ledge) {
        move(Solid);
    } else {
        devil_wall_bounce();
    }
    
}
