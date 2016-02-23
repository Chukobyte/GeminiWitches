///bee_prepare_swoop_state()
if(instance_exists(Player)) {
    var dir = point_direction(x, y, Player.x, Player.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);
    prepare_swoop_count--;
    if(prepare_swoop_count <= 0) {
        prepare_swoop_count = prepare_swoop_count_max;
        player_dir = dir;
        state = bee_swoop_state;
    }
    
    x -= hspd;
    y -= vspd;
}
