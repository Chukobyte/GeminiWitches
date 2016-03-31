///enemy_init()

//These are for movement
hspd = 0;
vspd = 0;
acc = 1;
spd = 2;
grav = 1.5;

enemy_attack = 1;

enemy_damaged = false;
enemy_flinch = true;
enemy_damage_timer_max = 5;
enemy_damage_timer = 0;

state = "";
hurt_state = enemy_hurt_state;
previous_state = "";
hp = 1;
exp_given = 4;
sight_range = 180;
//may be temp, determines whether enemy flies into a wall or through it
can_go_through_walls = false;
coin_type_dropped = SilverCoin;

//sprite properties
hurt_sprite = "";
