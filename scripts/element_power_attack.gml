///element_power_attack()
if(homing) {
    var dir = point_direction(x, y, target.x, target.y);
    hspd = lengthdir_x(spd, dir);
    vspd = lengthdir_y(spd, dir);   
}

x += hspd * sign(image_xscale);
y += vspd;
