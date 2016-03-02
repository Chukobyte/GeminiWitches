///devil_move_state()


image_blend = c_yellow;

hspd -= image_xscale * 150;
vspd -= 150;

correct_sprite_direction();
move(Solid);
hspd = 0;
vspd = 0;

state = devil_shoot_state;
