///devil_wall_bounce()

image_blend = c_yellow;

hspd -= image_xscale * 160;
vspd = -64;

correct_sprite_direction();
move(Solid);
hspd = 0;
vspd = 0;
