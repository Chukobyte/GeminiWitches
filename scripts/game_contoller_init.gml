///game_contoller_init()

/*
* GameController is designed to set up global vars,
* manipulate room and globlal game state.
* 
* Empty string "" means that the var is unitialized.
*/

global.debug = false;

//will default to true for now
global.input_enabled = true;
global.player_1_selected = "none";
global.second_counter = 0;
global.time = 0;
global.game_paused = false;

//menu
global.game_menu_selection_play = "PLAY";
global.game_menu_selection_options = "OPTIONS";
global.game_menu_selection_exit = "EXIT";
global.game_menu_selection = global.game_menu_selection_play;

global.options_menu_sound = "Sound";
global.options_menu_sound_selection = "ON"; // Either ON or OFF
global.options_menu_back_to_menu = "Back to menu";
global.options_menu_selection = global.options_menu_back_to_menu;

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

global.particle3 = part_type_create();
part_type_shape(global.particle3, pt_shape_pixel);
part_type_size(global.particle3, 0.1, 0.15, 0, 0.5);
//part_type_colour1(global.particle3, c_navy);
//part_type_color2(global.particle3, c_blue, c_white);
part_type_color_mix(global.particle3, c_blue, c_white);
part_type_speed(global.particle3, .25, .5, .20, 0);
part_type_direction(global.particle3, 0, 180, 2, 0);
part_type_life(global.particle3,10,10);

global.particle4 = part_type_create();
part_type_shape(global.particle4, pt_shape_snow);
part_type_size(global.particle4, 0.2, 0.25, 0, 0);
part_type_colour1(global.particle4, c_purple);
part_type_speed(global.particle4, 0.3, 0.4, -0.10, 0);
part_type_life(global.particle4,4,4);

global.particle5 = part_type_create();
part_type_shape(global.particle5, pt_shape_explosion);
part_type_size(global.particle5, 0.4, 0.5, 0, 0);
part_type_colour1(global.particle5, c_green);
part_type_speed(global.particle5, 0.3, 0.4, -0.10, 0);
part_type_life(global.particle5,6,6);

global.earth_level_completed = false;
global.wind_level_completed = false;
global.fire_level_completed = false;
global.water_level_completed = false;

//Enemy Item Drop Arrays
//global.enemy_item_drop[0] = SilverCoin;
//global.enemy_item_drop[1] = HealthDrop;
//global.enemy_item_drop[2] = MagicPowerDrop;
