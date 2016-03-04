///devil_move_state()

image_blend = c_yellow;

hspd -= image_xscale * 150;
vspd -= 150;

correct_sprite_direction();
move(Solid);
hspd = 0;
vspd = 0;

state = devil_shoot_state;

/*

//fall
if(!place_meeting(x, y + 1, Solid)) {
    vspd += grav;
}

var hspd_limit = abs(hspd) > spd_max;
var vspd_limit = abs(vspd) > spd_max;

if(hspd_limit && vspd_limit) {
        hspd = 0;
        vspd = 0;
        state = devil_shoot_state;
} else {
    image_blend = c_yellow;
    hspd -= image_xscale * spd_incr;
    vspd -= spd_incr;
    correct_sprite_direction();
    move(Solid);
}
*/
