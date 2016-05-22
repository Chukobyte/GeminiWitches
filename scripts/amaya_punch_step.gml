///amaya_punch_step()
x = Player.x + Player.image_xscale * 10;
y = Player.y + 5;
image_xscale = Player.image_xscale;

life--;

if(life <= 0 || !Player.attacking) {
    instance_destroy();
}
