///bee_init()
event_inherited();
state = bee_chase_state;
sight_range = 180;
chase_state_timer_max = 60;
chase_state_timer = chase_state_timer_max;
prepare_swoop_count_max = 15
prepare_swoop_count = prepare_swoop_count_max;
swoop_count_max = 50;
swoop_count = swoop_count_max;

player_dir = 0;
hurt_sprite = spr_bee_damaged;

