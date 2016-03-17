///hedgehog_attack_state()

//TODO: Make this cleaner!

//In the air
if(!place_meeting(x, y + 1, Solid)) {
    vspd += grav;
}

if(instance_exists(Player)) {

    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    if(dis <= sight_range) {
        sprite_index = spr_hedgehog_walk;
        image_blend = c_fuchsia;
        image_speed = .5;
        
        //Move towards the player
        if(abs(hspd) < spd) {
            hspd += sign(lengthdir_x(acc, dir)) * acc;
        }
    } else {
        image_blend = c_white;
        sprite_index = spr_hedgehog_idle;
        image_speed = 0;
        apply_friction(2);
    }
}

correct_sprite_direction();
//checks ledges
if(image_xscale == 1) {
    //facing right
    var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, Solid);
    if(ledge_at_right) { 
        hspd = 0; 
        image_blend = c_white;
        sprite_index = spr_hedgehog_idle;
        image_speed = 0;
    }
} else if(image_xscale == -1) {
    //facing left
    var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, Solid);
    if(ledge_at_left) { 
        hspd = 0; 
        image_blend = c_white;
        sprite_index = spr_hedgehog_idle;
        image_speed = 0;
    }
}

move(Solid);
