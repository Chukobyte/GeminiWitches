///element_power_enemy_collision()
if(affects_enemy && !other.enemy_damaged) {
    var damage_done = damage;
    var flinch = stuns;
    with(other) {
        if(!enemy_damaged) {
            hp -= damage_done;
            enemy_damaged = true;
            enemy_damaged_timer = enemy_damaged_timer_max;
            
        } 
    }
    
    if(object_index == MirrorShot) {
    //instance_create(x, y, SmallSmoke);
        part_particles_create(global.particle_system, x, y, global.particle1, 1);
    }
    
    instance_destroy();  
    
    /*
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
    */
    
    
}
