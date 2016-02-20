///move(collision_object)
var collision_object = argument0;

/*
* Horizontal Collisions
* Seems to detect horizontal collision when falling
* gave y position 1 pixel higher for to account
* for that for now.
*/
if(place_meeting(x + hspd, y, collision_object)) {
    while(!place_meeting(x+sign(hspd), y, collision_object)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// Vertical Collisions
if(place_meeting(x, y + vspd, collision_object)) {
    while(!place_meeting(x, y+sign(vspd), collision_object)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

