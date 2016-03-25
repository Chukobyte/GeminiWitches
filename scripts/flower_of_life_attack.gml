///flower_of_life_attack();
        
activation_timer--;

if(!place_meeting(x, y + 1, Solid)){
    vspd += grav;
    image_index = 0;
    affects_player = false;
} else {
    vspd = 0;
    image_index = 1;
    if(activation_timer <= 0){
        affects_player = true; 
    }
}

move(Solid);
