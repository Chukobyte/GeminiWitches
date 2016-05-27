///player_stats_init()
player_lives = 3;

maxhp = 6;
hp = maxhp;
hp_regen = 0;

maxmp = 6;
mp = maxmp;
mp_regen = 0;

soul_element_attack_cooldown = 1 * room_speed;
soul_element_attack_timer = soul_element_attack_cooldown; 

//Adds or subtracts to Player's base stats.
attack = 1;
charge_time = 0;
charge_time_max = room_speed * 2;
knockback_strength = 20; //determines how far an enemy flies on punch
spd = 0;
jump_height = 0;

//level
level = 1;
level_exp = 0;
level_exp_max = 10;
element_points = 0;
soul_element_shot_count = 3;

//score related
enemies_defeated = 0;
game_score = 0;

//Items related stats
money = 0;

//Soul Gems Attributes
soul_gems = 0;

earth_level = 0;
wind_level = 0;
fire_level = 0;
water_level = 0;
