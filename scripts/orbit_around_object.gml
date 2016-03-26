///orbit_around_object(x,y,radius,speed)

/*
orbit_x = argument0; //the x of where to orbit
orbit_y = argument1; //the y of where to orbit
orbit_radius = argument2;
orbit_spd = argument3;
*/

//dir_now = point_direction(orbit_x,orbit_y,x,y);
//dir_new = (dir_now + orbit_spd + 360)mod(360);
x = argument0+lengthdir_x(argument2, argument3);
y = argument1+lengthdir_y(argument2, argument3);

argument3 -= 3

