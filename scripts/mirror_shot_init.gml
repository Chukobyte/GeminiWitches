///mirror_shot_init()
event_inherited();
damage = .5;
cost = 0;
hspd = 6;
duration = 1.5 * room_speed;
attack_script = mirror_shot_attack;
stuns = false;

//Sprite is based on character
if(global.player_1_selected == Seika) {
    sprite_index = spr_seika_shot;
} else if(global.player_1_selected == Amaya) {
    sprite_index = spr_amaya_shot;
}
image_speed = 0.2;
