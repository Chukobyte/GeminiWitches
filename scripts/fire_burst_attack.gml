///fire_burst_attack()
var fire_1 = instance_create(bbox_left - 12, y, FireBurst);
var fire_2 = instance_create(bbox_right + 12, y, FireBurst);
var fire_3 = instance_create(x, bbox_top - 5, FireBurst);
var fire_4 = instance_create(x, bbox_bottom + 5, FireBurst);

PlayerStats.mp -= fire_1.cost;
soul_element_attack_timer = soul_element_attack_cooldown;
