///enemy_destroy()

var audio_em = audio_emitter_create();
audio_emitter_gain(audio_em, .3);
audio_play_sound_on(audio_em, snd_explosion, false, 5);

repeat(5) {
    var rand_num = random_range(3,6);
    
    instance_create(x - rand_num, y - rand_num, Smoke);
    instance_create(x + rand_num, y + rand_num, Smoke);
    instance_create(x - rand_num, y + rand_num, Smoke);
    instance_create(x + rand_num, y - rand_num, Smoke);
}

//TODO: have better implementation of item/coin drops

//If an array is passed, it will choose randomly between items
//defaults to knowing the standard enemy health drop
if(item_dropped == "enemy") {
    var item_percentage = irandom(100);
    if(item_percentage >= 0 && item_percentage <= 10) {
        item_dropped = HealthDrop;
    } else if(item_percentage > 10 && item_percentage <= 30) {
        item_dropped = MagicPowerDrop;
    } else if(item_percentage > 30 && item_percentage <= 100) {
        item_dropped = SilverCoin;
    }
}

//Drops a coin and makes sure the Player can collect
if(item_dropped != "none") {
    if(!position_meeting(x, y, Solid)) {
        instance_create(x, y, item_dropped);
    } else {
        //Checks north west and south east diagonally
        var terminate_loop = false;
        for(var xx = 1; xx <= 25; xx++) {
            if(!terminate_loop) {
                for(var yy = 1; yy <= 25; yy++) {
                    if(!position_meeting(x - xx, y - yy, Solid)) {
                        instance_create(x - xx, y - yy, item_dropped);
                        terminate_loop = true;
                        break;
                    } else if(!position_meeting(x + xx, y + yy, Solid)) {
                        instance_create(x + xx, y + yy, item_dropped);
                        terminate_loop = true;
                        break;
                    }
                }
            }   
        }
    }
}
