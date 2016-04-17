///bug_move_left_state()

sprite_index = spr_bug_move;
image_xscale = -1;
image_speed = 0.3;

if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
}

var wall_at_left = place_meeting(x - 1, y, Solid);

if(wall_at_left || is_at_ledge()) {
    state = bug_move_right_state;
}

//Move the bug
hspd = -spd;

move(Solid);

