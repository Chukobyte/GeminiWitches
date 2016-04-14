///element_power_player_collision()
if(affects_player) {
    var damage_taken = damage;
    
    //if healing don't knock enemy back
    var knock_back;
    if(damage <= 0) {
        knock_back = 0;
    } else {
        knock_back = 15;
    }
    
    with(other) {
            player_take_damage(damage_taken, false, knock_back);
    }
    instance_destroy();
}
