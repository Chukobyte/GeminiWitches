///game_contoller_init()

/*
* GameController is designed to set up global vars,
* manipulate room and globlal game state.
* 
* Empty string "" means that the var is unitialized.
*/

//will default to true for now
global.input_enabled = true;
global.player_1_Selected = "";
global.second_counter = 0;
global.time = 120;

//menu
global.play_again_prompt_yes = "YES";
global.play_again_prompt_no = "NO";
global.play_again_prompt = global.play_again_prompt_yes;

show_exit_door = false;
global.choose_character_selection = SeikaPortrait;
global.menu_item_selection_timer_max = 20;
global.menu_item_selection_timer = 0;
