///calculate_game_score()
var time_calc = (300 - global.time) div 4; 
PlayerStats.game_score = PlayerStats.enemies_defeated + time_calc + PlayerStats.money;
return PlayerStats.game_score;
