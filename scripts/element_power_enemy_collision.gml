///element_power_enemy_collision()
if(affects_enemy) {
    var damage_done = damage;
    var flinch = stuns;
    with(other) {
        if(state != hurt_state){
            if(flinch) {
                hp -= damage_done;
                previous_state = state;
                state = hurt_state;
                enemy_damage_timer = enemy_damage_timer_max;
            } else {
                hp -= damage_done;
            }
            
        }
    }
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .3);
    audio_play_sound_on(audio_em, snd_explosion, false, 5);
    repeat(2) {
        var rand_num = random_range(3,6);
    
        instance_create(x - rand_num, y - rand_num, Smoke);
        instance_create(x + rand_num, y + rand_num, Smoke);
        instance_create(x - rand_num, y + rand_num, Smoke);
        instance_create(x + rand_num, y - rand_num, Smoke);
    }
    instance_destroy();
}
