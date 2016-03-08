///rm_main_init()
if(instance_exists(DoorClosed)) {
    instance_create(DoorClosed.x, DoorClosed.y, global.player_1_selected);
} else {
    instance_create(64, 208, global.player_1_selected);
}
