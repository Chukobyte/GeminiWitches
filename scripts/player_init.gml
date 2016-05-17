///player_init()

spd = 6 + PlayerStats.spd;
acc = 2;
hspd = 0;
vspd = 0;
grav = 1.5;
jump_height = -18;
double_jump_enabled = false;
blur_limit_max = room_speed * 4;
blur_limit = blur_limit_max;
state = player_move_state;

//For determining if the player is attacking or not.
//Resets in player step event
attacking = false;

//Get the input
get_player_input();

/*
* Timers decrement in the step event.
* They will always decrement by 1.
*/

attack_cooldown = 0.50 * room_speed;
attack_timer = attack_cooldown;

hurt_state_timer_max = 10;
hurt_state_timer = hurt_state_timer_max;

death_state_timer_max = 30;
death_state_timer = death_state_timer_max;

invincibility_timer_max = 30;
invincibility_timer = -1;

bubble_timer_max = 60;
bubble_timer = bubble_timer_max;
//invincibility_toggle = 0;


/*
* Sprite Properties
* All default to player mask in parent object
*/

sprite_color = c_white;
sprite_alpha = 1;

idle_sprite = spr_player_mask;
idle_sprite_speed = 0;

walk_animation_sprite = spr_player_mask;
walk_animation_speed = 0.3;

jump_sprite = spr_player_mask;
jump_sprite_released = spr_player_mask;
jump_sprite_speed = 0;

attack_sprite = spr_player_mask;
attack_sprite_speed = 0.1;

jump_sprite_attack = spr_player_mask;
jump_sprite_attack_speed = 0.1;

fly_sprite = spr_player_mask;
fly_sprite_speed = 0;
fly_delay = 10;

swim_idle_sprite = spr_player_mask;
swim_anim_sprite = spr_player_mask;
swim_anim_sprite_speed = 0.2;

walk_animation_attack_sprite = spr_player_mask;
walk_animation_attack_speed = 0.2;

hurt_state_sprite = spr_player_mask;

death_state_sprite = spr_player_mask;
death_state_sprite_speed = 0.3;
