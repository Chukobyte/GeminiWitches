///special_attacks_player_collision()
if(affects_player) {
    var damage_taken = damage;
    with(other) {
            player_take_damage(damage_taken, true);
    }
    instance_destroy();
}
