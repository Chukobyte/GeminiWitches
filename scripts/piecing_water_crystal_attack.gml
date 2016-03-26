///piecing_water_crystal_attack_script()
x += hspd * sign(image_xscale);

if(place_meeting(x, y, Water) || place_meeting(x, y, WaterTop)) {
    image_xscale = 2;
    image_yscale = 2;
}
