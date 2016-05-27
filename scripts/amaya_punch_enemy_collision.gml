///amaya_punch_enemy_collision()
if(!other.enemy_damaged) {
    with(other) {
        hp -= PlayerStats.attack;
        enemy_damaged = true;
        enemy_damaged_timer = enemy_damaged_timer_max;  
            
        //Pushes the enemy back
        var dir = point_direction(x, y, Player.x, Player.y);
        var temp_hspd = hspd;
        hspd = -(lengthdir_x(PlayerStats.knockback_strength, dir));
        //vspd = lengthdir_y(20, dir);
            
        if(!can_go_through_walls) {
            move(Solid);
        } else {
            x += hspd;
        }
        hspd = temp_hspd;
        attacking = false;
            
    }
    //knock player back
    with(Player) {
        var temp_hspd = hspd;
        var temp_vspd = vspd;
        hspd = -(Player.image_xscale * 8);
        vspd = -8;
        move(Solid);
        hspd = temp_hspd;
        vspd = temp_vspd;
    }
    //Player.x -= Player.image_xscale * 8;
    //Player.y -= 8;
    
    var hit_star1 = instance_create(x, y, HitStars);
    hit_star1.hspd = 1;
    hit_star1.vspd = 1;
    var hit_star2 = instance_create(x, y, HitStars);
    hit_star2.hspd = -1;
    hit_star2.vspd = -1;
    var hit_star3 = instance_create(x, y, HitStars);
    hit_star3.hspd = 1;
    hit_star3.vspd = -1;
    var hit_star4 = instance_create(x, y, HitStars);
    hit_star4.hspd = -1;
    hit_star4.vspd = 1;
}

