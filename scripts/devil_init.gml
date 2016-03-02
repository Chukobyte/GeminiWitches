///devil_init()

event_inherited();
enemy_attack = 2;
spd = 3;
hp = 4;
sight_range = 80;
hurt_sprite = spr_devil_hurt;
state = devil_shoot_state;
devil_shot_timer_max = room_speed * 2;
devil_shot_timer = devil_shot_timer_max;
