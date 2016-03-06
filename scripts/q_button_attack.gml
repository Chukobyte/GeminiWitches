///q_button_attack()
var fire_1 = instance_create(bbox_left - 12, y, FireBurst);
var fire_2 = instance_create(bbox_right + 12, y, FireBurst);

PlayerStats.mp -= fire_1.cost;
magic_attack_timer = magic_attack_cooldown;
