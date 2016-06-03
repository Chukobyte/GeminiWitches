///fish_move_state()
move_timer--;

hspd = image_xscale;

/*
if(move_timer <= 0) {
    move_timer = move_timer_max + irandom(80);
    image_xscale = -image_xscale;
}
*/

move(Solid);

//turn around if hitting a wall
var turn_around = place_meeting(x + 1, y, Solid) || place_meeting(x - 1, y, Solid);
if(turn_around) {
    image_xscale = -image_xscale;
}
