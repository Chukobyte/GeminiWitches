///enemy_destroy()

repeat(5) {
    var rand_num = random_range(3,6);
    
    instance_create(x - rand_num, y - rand_num, Smoke);
    instance_create(x + rand_num, y + rand_num, Smoke);
    instance_create(x - rand_num, y + rand_num, Smoke);
    instance_create(x + rand_num, y - rand_num, Smoke);
    
    /*
    instance_create(x - 5, y - 5, Smoke);
    instance_create(x + 5, y + 5, Smoke);
    instance_create(x - 5, y + 5, Smoke);
    instance_create(x + 5, y - 5, Smoke);
    */
}
