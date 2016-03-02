///player_step()
//Executes state and increment timers
get_player_input();
attack_timer--;
magic_attack_timer--;
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

script_execute(state);
