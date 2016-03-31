///player_stats_init()
maxhp = 6;
hp = maxhp;
hp_regen = 0;

maxmp = 6;
mp = maxmp;
mp_regen = 0.005;

soul_element_attack_cooldown = 1 * room_speed;
soul_element_attack_timer = soul_element_attack_cooldown; 

//Adds or subtracts to Player's base stats.
attack = 1;
knockback_strength = 15; //determines how far an enemy flies on punch
spd = 0;
jump_height = 0;

//level
level = 1;
level_exp = 0;
level_exp_max = 10;
element_points = 0;

//Items related stats
money = 0;

//Soul Gems Attributes
soul_gems = 0;

earth_unlocked = false;
wind_unlocked = false;
fire_unlocked = false;
water_unlocked = false;
