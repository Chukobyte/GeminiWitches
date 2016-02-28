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

//Toggles back and forth betwee being visible while invincible.
//Since it will run the last if statement at 0
if(invincibility_timer >= 0) {
    if(invincibility_toggle == 0) {
        image_alpha = invincibility_toggle;
        invincibility_toggle = 1;
    } else if(invincibility_toggle == 1) {
        image_alpha = invincibility_toggle
        invincibility_toggle = 0
    }
}

if(PlayerStats.hp < PlayerStats.maxhp) {
    PlayerStats.hp += PlayerStats.hp_regen
}

if(PlayerStats.mp < PlayerStats.maxmp) {
    PlayerStats.mp += PlayerStats.mp_regen;
}

script_execute(state);
