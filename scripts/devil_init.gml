///devil_init()

event_inherited();
enemy_attack = 1;
acc = 2;
spd = 6;
hp = 6;
sprite_color = "black"; //red, yellow, blue, green, and black
sight_range = 150;
sprite_index = asset_get_index("spr_devil_idle_" + sprite_color);
hurt_sprite = asset_get_index("spr_devil_hurt_" + sprite_color);
exp_given = 50;
state = devil_shoot_state;
jump_damage = false;

devil_shot_timer_max = room_speed * 2;
devil_shot_timer = devil_shot_timer_max;

//move state vars
spd_incr = 0;
//spd_move_state = 0;

coin_type_dropped = "none";


if(room == rm_cutscene) {
    timeline_index = tl_devil_cutscene;
    timeline_position = 0;
    timeline_running = true;
    timeline_loop = false;
} else {
    timeline_index = tl_devil;
    timeline_position = 0;
    timeline_running = true;
    timeline_loop = true;

}

