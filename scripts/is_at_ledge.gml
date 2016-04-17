///is_at_ledge()

//facing right
if(image_xscale == 1) {
    return !position_meeting(bbox_right + 1, bbox_bottom + 1, Solid) && place_meeting(x, y + 1, Solid);
} else {
    //facing left
    return !position_meeting(bbox_left - 1, bbox_bottom + 1, Solid) && place_meeting(x, y + 1, Solid);
}

