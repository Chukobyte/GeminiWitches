///devil_move_state()


image_blend = c_yellow;

hspd -= image_xscale * 120;
vspd -= 120;

correct_sprite_direction();
move(Solid);
hspd = 0;
vspd = 0;

state = devil_shoot_state;
