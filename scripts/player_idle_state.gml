///player_idle_state
if(!place_meeting(x, y + 1, Solid)){
    in_the_air = true;
    vspd += grav;
    move(Solid);
} else {
    in_the_air = false;
}
