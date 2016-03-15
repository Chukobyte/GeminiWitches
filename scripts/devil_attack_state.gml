///devil_attack_state()

if(instance_exists(Player)) {
    //In the air
    if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
    }

    image_blend = c_yellow;
    var dis = point_distance(x, y, Player.x, Player.y);
    var dir = point_direction(x, y, Player.x, Player.y);
    //boost sight range for attack
    if(dis <= sight_range + 20) {
        sprite_index = spr_devil_move;   
        image_speed = 0.2;
        //run towards the player
        hspd += sign(lengthdir_x(spd, dir)) * spd;
    } else {
        apply_friction(.2);
    }
    
    correct_sprite_direction();
    move(Solid);
}
