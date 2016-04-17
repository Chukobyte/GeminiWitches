///devil_attack_state()

if(instance_exists(Player)) {
    //In the air
    if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
    }

    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    //boost sight range for attack
    if(dis <= sight_range + 60) {
        sprite_index = asset_get_index("spr_devil_move_" + sprite_color); 
        image_speed = 0.2;
        image_blend = c_yellow;
        //run towards the player
        hspd += sign(lengthdir_x(acc, dir)) * acc;
    } else {
        image_blend = c_white;
        apply_friction(.2);
    }
    
    if(hspd > spd) {
        hspd = spd;
    }
    
    if(hspd < -spd) {
        hspd = -spd;
    } 
    
    var touching_ledge = false;
    if(image_xscale == 1) {
        touching_ledge = position_meeting(bbox_right + 1, bbox_bottom + 1, Solid);
    } else {
        touching_ledge = position_meeting(bbox_left - 1, bbox_bottom + 1, Solid);
    }
    
    if(touching_ledge) {
        hspd = 0;
    }
       
    correct_sprite_direction();
    move(Solid);
}
