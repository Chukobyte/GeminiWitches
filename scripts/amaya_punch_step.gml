///amaya_punch_step()

if(Player.in_the_air) {
    y = Player.y + 4;
} else {
    y = Player.y + 5;
}
x = Player.x + Player.image_xscale * 10;
image_xscale = Player.image_xscale;

life--;

if(life <= 0 || !Player.attacking) {
    instance_destroy();
}
