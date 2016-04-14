///devil_shot_step()

if(homing) {
    var dir = point_direction(x, y, target.x, target.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);   
}

if(fired) {
    x += hspd;
    y += vspd;
}
