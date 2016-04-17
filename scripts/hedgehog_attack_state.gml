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
if(is_at_ledge()) {
    hspd = 0; 
    image_blend = c_white;
    sprite_index = spr_hedgehog_idle;
    image_speed = 0;
}

move(Solid);
