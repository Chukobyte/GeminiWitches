///player_health_drop_collision()
PlayerStats.hp += 2;
if(PlayerStats.hp > PlayerStats.maxhp) {
    PlayerStats.hp = PlayerStats.maxhp;
}

with(other) {
    instance_destroy();
}
