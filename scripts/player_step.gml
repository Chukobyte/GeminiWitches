///player_step()
//Executes state and increment timers
get_player_input();
global.menu_item_pause_delay--;

//pause the game
if(start && global.menu_item_pause_delay <= 0 && !global.game_paused) {
    global.menu_item_pause_delay = global.menu_item_pause_delay_max;
    if(room == rm_cutscene) {
        timeline_running = false;
        timeline_position = 0;
        room_goto_next();
    } else {
        PlayerStats.current_room = room;
        global.game_paused = true;
        room_goto(rm_pause_menu);
    }
}

if(global.game_paused) {
    image_speed = 0;
    return -1;
}

//temp for now
if(room == rm_cutscene) {
    if(timeline_index != tl_player_cut_scene) {
        timeline_index = tl_player_cut_scene;
        timeline_position = 0;
        timeline_running = true;
        timeline_loop = false;
    }
} else if(room == rm_boss_cutscene) {
    /*
    if(timeline_index != tl_player_cut_scene) {
        timeline_index = tl_player_cut_scene;
        timeline_position = 0;
        timeline_running = true;
        timeline_loop = false;
    }
    */
    
    //temp change state to idle for now
    state = player_idle_state;
}

attack_timer--;
PlayerStats.soul_element_attack_timer--;
invincibility_timer--;
fly_delay--;
if(attack_timer <= 0) {
    attacking = false;
}

//Toggles back and forth between being visible while invincible.
if(invincibility_timer >= 0) {
    if(invincibility_timer mod 2 == 0) {
        image_alpha = 1;
    } else {
        image_alpha = 0;
    }
}

if(PlayerStats.hp < PlayerStats.maxhp) {
    PlayerStats.hp += PlayerStats.hp_regen
}

if(PlayerStats.mp < PlayerStats.maxmp) {
    PlayerStats.mp += PlayerStats.mp_regen;
}

//for level up
if(PlayerStats.level_exp >= PlayerStats.level_exp_max) {
    PlayerStats.level += 1;
    PlayerStats.element_points += 1;
    PlayerStats.level_exp = PlayerStats.level_exp - PlayerStats.level_exp_max;
    PlayerStats.level_exp_max *= 2;
    
    //stat increase
    PlayerStats.hp += 1;
    PlayerStats.maxhp += 1;
    PlayerStats.mp += 1;
    PlayerStats.maxmp += 1;
}

//swim state check for now
//assumes player exit from the bottom
var player_touched_water = place_meeting(x, y, Water) || place_meeting(x, y, WaterTop);
if(player_touched_water && state != player_hurt_state && state != player_death_state) {
    under_water = true;
    image_blend = c_white;
    //reset charge time when under water
    PlayerStats.charge_time = 0;
    state = player_swim_state;
} else if(state == player_swim_state && !player_touched_water) {
    under_water = false;
    //boost jump
    if(vspd > jump_height) {
        vspd = jump_height;
    }
    state = player_move_state;
} 


script_execute(state);
