///bee_swoop_state
if(instance_exists(Player)) {
    if(swoop_count <= 0) {
        swoop_count = swoop_count_max;
        state = bee_chase_state;
    } else {
        swoop_count--;
        hspd = lengthdir_x(spd*3, player_dir);
        vspd = lengthdir_y(spd*3, player_dir);
    
         //Change to the correct sprite
        sprite_index = spr_bee_fly;
        image_speed = 0.3;
    
        //Face the right direction
        if(hspd != 0) {
            image_xscale = sign(hspd);
        }
    
       //Move
        x += hspd;
        y += vspd;
    }
}
