///soul_gem_step()
flash_timer--;
if(flash_timer < flash_timer_max && flash_timer > 3) {
    sprite_index = gem_sprite;
} else if(flash_timer <= 3 && flash_timer > 0){
    sprite_index = flash_sprite;
} else {
    flash_timer = flash_timer_max;
}
