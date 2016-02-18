///player_init()

/// Initialize the player object
spd = 6;
acc = 2;
hspd = 0;
vspd = 0;
grav = 1.5;
jump_height = -16
state = player_move_state;

//Get the input
get_player_input();

//Create the audio emitter
//audio_em = audio_emitter_create();
