///flower_of_life_init()
event_inherited();
damage = -2;
cost = 2;
hspd = 0;
vspd = 0;
grav = 1.5;
image_speed = 0;

affects_enemy = false;
affects_player = false;
destroyed_by_solid_contact = false;

//Small delay for when player can consume flower.
activation_timer = room_speed;