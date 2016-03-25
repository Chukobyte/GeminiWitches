///mirror_shot_step()
event_inherited();

duration--;
if(fired) {
    x += hspd * sign(image_xscale);
}

if(duration <= 0) {
    instance_destroy();
}
