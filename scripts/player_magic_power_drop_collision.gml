///player_magic_power_drop_collision()
PlayerStats.mp += 2;
if(PlayerStats.mp > PlayerStats.maxmp) {
    PlayerStats.mp = PlayerStats.maxmp;
}

with(other) {
    instance_destroy();
}
