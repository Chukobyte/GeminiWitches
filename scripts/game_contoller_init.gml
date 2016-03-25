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
global.player_1_Selected = "";
global.second_counter = 0;
global.time = 120;
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
