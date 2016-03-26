///player_gem_collision()


with(other) {
    switch(element) {
    case "earth":
        PlayerStats.earth_unlocked = true;
        PlayerStats.soul_gems += 1;
        PlayerStats.maxhp += 2;
        PlayerStats.hp = PlayerStats.maxhp;
        PlayerStats.hp_regen += 0.001;
        instance_destroy();
        break;
    case "wind":
        PlayerStats.wind_unlocked = true;
        PlayerStats.soul_gems += 1;
        PlayerStats.spd += 1;
        //PlayerStats.jump_height -= 1;
        //PlayerStats.knockback_strength *= 2;
        instance_destroy();
        break;
    case "fire":
        PlayerStats.fire_unlocked = true;
        PlayerStats.soul_gems += 1;
        PlayerStats.attack += 1;
        instance_destroy();
        break;
    case "water":
        PlayerStats.water_unlocked = true;
        PlayerStats.soul_gems += 1;
        PlayerStats.maxmp += 2;
        PlayerStats.mp = PlayerStats.maxmp;
        PlayerStats.mp_regen *= 2;
        instance_destroy();
        break;
    default:
        break;
    }
    
    var audio_em = audio_emitter_create();
    audio_emitter_gain(audio_em, .7);
    audio_emitter_pitch(audio_em, .7);
    audio_play_sound_on(audio_em, snd_coin_pickup, false, 5);
    instance_destroy();
}
