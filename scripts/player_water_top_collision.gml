///player_water_top_collision()

//splash effect
if(position_meeting(x, y, WaterTop)) {
    part_particles_create(global.particle_system, x + 1, other.bbox_top, global.particle3, 1);
    part_particles_create(global.particle_system, x, other.bbox_top, global.particle3, 1);
    part_particles_create(global.particle_system, x - 1, other.bbox_top, global.particle3, 1);
}



