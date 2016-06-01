///fish_init()
event_inherited();
state = fish_move_state;
image_speed = 0.25;

move_timer_max = room_speed * 3;
move_timer = move_timer_max;

