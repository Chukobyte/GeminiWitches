///player_init()

/// Initialize the player object
spd = 6;
acc = 2;
hspd = 0;
vspd = 0;
grav = 1.5;
jump_height = -18;
state = player_move_state;

//Need to create a player stats object
action_cooldown = 1;
alarm[0] = action_cooldown
//Get the input
get_player_input();

/*
*Sprite Properties
*All default to player mask in parent object
*/
idle_sprite = spr_player_mask;
idle_sprite_speed = 0;
walk_animation_sprite = spr_player_mask;
walk_animation_speed = .3;
jump_sprite = spr_player_mask;
jump_sprite_released = spr_player_mask;
jump_sprite_speed = 0;

//Create the audio emitter
//audio_em = audio_emitter_create();
