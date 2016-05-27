///devil_power_change_state()
sprite_index = asset_get_index("spr_devil_power_change_" + sprite_color);
image_speed = 0;
image_blend = c_white;

if(instance_exists(Player)) {
    //In the air
    if(!place_meeting(x, y + 1, Solid)) {
        vspd += grav;
    }
}
apply_friction(1);
move(Solid);
