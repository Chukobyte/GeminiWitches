///devil_init()

event_inherited();
enemy_attack = 2;
spd = 1;
hp = 4;
sight_range = 150;
hurt_sprite = spr_devil_hurt;
state = devil_shoot_state;

devil_shot_timer_max = room_speed * 2;
devil_shot_timer = devil_shot_timer_max;

//move state vars
spd_incr = 0;
//spd_move_state = 0;

coin_type_dropped = GoldCoin;
