///enemy_init()

//These are for movement
hspd = 0;
vspd = 0;
spd = 2;

enemy_attack = 1;

enemy_damaged = false;
enemy_damage_timer_max = 15;
enemy_damage_timer = enemy_damage_timer_max;

state = "";
hurt_state = enemy_hurt_state;
previous_state = "";
hp = 1;
sight = 180;
//may be temp, determines whether enemy flies into a wall or through it
can_go_through_walls = false;

//sprite properties
hurt_sprite = "";
