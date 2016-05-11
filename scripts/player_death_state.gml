///player_death_state

if(death_state_timer > 0) {
    death_state_timer--;    
    
    //makes sure character fall when dead
    if(!place_meeting(x, y + 1, Solid)){
        vspd += grav;
    } else {
        //TODO: Add slight bounce code here.
    }
    
    apply_friction(.4);
    
    move(Solid);
} else {
    PlayerStats.hp = PlayerStats.maxhp;
    PlayerStats.mp = PlayerStats.maxmp;
    PlayerStats.money = 0;
    state = player_move_state;
    room_persistent = false;
    PlayerStats.player_lives -= 1;
    if(PlayerStats.player_lives <= 0) {
        room_goto(rm_play_again);
    } else {
        room_restart();
    }
    
}

