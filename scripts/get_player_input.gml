///get_player_input()

//if(GameController.input_enabled){
    full_screen_button = keyboard_check_pressed(vk_f1);
    restart_button = keyboard_check_pressed(vk_f5);
    end_game_button = keyboard_check(vk_escape);
    screen_shot_button = keyboard_check(vk_f7);
    start = keyboard_check(vk_enter);
    left = keyboard_check(vk_left);
    right = keyboard_check(vk_right);
    up = keyboard_check_pressed(vk_up);
    hold_up = keyboard_check(vk_up);
    up_release = keyboard_check_released(vk_up);
    down = keyboard_check(vk_down);
    attack_button = keyboard_check(ord('A'));
    soul_element_attack_button_pressed = keyboard_check(ord('S'));
    soul_element_attack_button_released = keyboard_check_released(ord('S'));
    water_magic_attack_button = keyboard_check(ord('X'));
    earth_magic_attack_button = keyboard_check(ord('Z'));
    fire_magic_attack_button = keyboard_check(ord('Q'));
    wind_magic_attack_button = keyboard_check(ord('W'));

    // Override the controls for a gamepad
    var gp_id = 0;
    var thresh = .5;

    if(gamepad_is_connected(gp_id)) {
        start = gamepad_button_check_pressed(gp_id, gp_start);
        right = gamepad_axis_value(gp_id, gp_axislh) > thresh;
        left = gamepad_axis_value(gp_id, gp_axislh) < -thresh;
        up = gamepad_button_check_pressed(gp_id, gp_face1);
        hold_up = gamepad_axis_value(gp_id, gp_axislv) < -thresh  ;
        up_release = gamepad_button_check_released(gp_id, gp_face1);
        down = gamepad_axis_value(gp_id, gp_axislv) > thresh;
        attack_button = gamepad_button_check_pressed(gp_id, gp_face3);;
        soul_element_attack_button_pressed = gamepad_button_check(gp_id, gp_face2) && !gamepad_button_check(gp_id, gp_shoulderrb);
        soul_element_attack_button_released = gamepad_button_check_released(gp_id, gp_face2) && !gamepad_button_check(gp_id, gp_shoulderrb);
        water_magic_attack_button = gamepad_button_check_pressed(gp_id, gp_face3) && gamepad_button_check(gp_id, gp_shoulderrb);
        earth_magic_attack_button = gamepad_button_check_pressed(gp_id, gp_face4) && gamepad_button_check(gp_id, gp_shoulderrb);
        fire_magic_attack_button = gamepad_button_check_pressed(gp_id, gp_face2) && gamepad_button_check(gp_id, gp_shoulderrb);
        wind_magic_attack_button = gamepad_button_check_pressed(gp_id, gp_face1) && gamepad_button_check(gp_id, gp_shoulderrb);
    }
//}

