///player_step()
//Executes state and increment timers
get_player_input();
attack_timer--;
magic_attack_timer--;
if(attack_timer <= 0) {
    attacking = false;
}
script_execute(state);
