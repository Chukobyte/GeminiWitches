///game_contoller_init()

/*
* GameController is designed to set up global vars,
* manipulate room and globlal game state.
* 
* Empty string "" means that the var is unitialized.
*/

global.debug = true;

//will default to true for now
global.input_enabled = true;
global.player_1_Selected = "";
global.second_counter = 0;
global.time = 180;
global.game_paused = false;

//menu
global.game_menu_selection_play = "PLAY";
global.game_menu_selection_options = "OPTIONS";
global.game_menu_selection_exit = "EXIT";
global.game_menu_selection = global.game_menu_selection_play;

global.play_again_prompt_yes = "YES";
global.play_again_prompt_no = "NO";
global.play_again_prompt = global.play_again_prompt_yes;

show_exit_door = false;
global.choose_character_selection = SeikaPortrait;

//delays
global.menu_item_selection_timer_max = 20;
global.menu_item_selection_timer = 0;
global.menu_item_confirmation_delay_max = 10;
global.menu_item_confirmation_delay = global.menu_item_confirmation_delay_max;
global.menu_item_pause_delay_max = 10;
global.menu_item_pause_delay = global.menu_item_pause_delay_max;

//particles
global.particle_system = part_system_create();

global.particle1 = part_type_create();
part_type_shape(global.particle1, pt_shape_circle);
part_type_size(global.particle1, 0.05, 0.1, 0, 0.5);
part_type_colour1(global.particle1, c_silver);
part_type_speed(global.particle1, 0.5, 2, -0.10, 0);
part_type_life(global.particle1,10,10);  

global.particle2 = part_type_create();
part_type_shape(global.particle2, pt_shape_cloud);
part_type_size(global.particle2, 0.1, 0.15, 0, 0.5);
part_type_colour1(global.particle2, c_white);
part_type_speed(global.particle2, 0.3, 0.4, -0.10, 0);
part_type_life(global.particle2,10,10);  
