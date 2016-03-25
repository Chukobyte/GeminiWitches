///player_step()
//Executes state and increment timers
get_player_input();

if(start) {
    global.game_paused = !global.game_paused;
}

if(global.game_paused) {
    image_speed = 0;
    return -1;
}

attack_timer--;
soul_element_attack_timer--;
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

//swim state check for now
//assumes player exit from the bottom
var player_touched_water = place_meeting(x, y, Water) || place_meeting(x, y, WaterTop);
if(player_touched_water) {
    state = player_swim_state;
} else if(state == player_swim_state && !player_touched_water) {
    //boost jump
    if(vspd > jump_height) {
        vspd = jump_height;
    }
    state = player_move_state;
} 

script_execute(state);
