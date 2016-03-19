///correct_sprite_direction_move()
if(hspd != 0) {
    image_xscale = sign(hspd);
} else if((right || left) && (abs(right) != abs(left))) {
    image_xscale = right - left;
}
