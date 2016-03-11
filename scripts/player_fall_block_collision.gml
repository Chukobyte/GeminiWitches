///player_fall_block_collision()

//Deals maxhp damage to instantly kill player
if(Player.state != player_fly_state && PlayerStats.hp > 0) {
    player_take_damage(PlayerStats.maxhp, false);
}
