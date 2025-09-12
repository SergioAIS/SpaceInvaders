/// @description Minions
// Solo spawneamos si el jefe sigue vivo
if (instance_exists(o_enemy_boss)) {
    var xx = irandom_range(25, room_width - 25);
    var yy = irandom_range(-10, 0);
    
    var choice = irandom(1);
    switch (choice) {
        case 0: 
			instance_create_layer(xx, yy, "obj_boss", o_enemy_pow_shield); 
		break;
		
        case 1: 
			instance_create_layer(xx, yy, "obj_boss", o_enemy_pow_lvlup); 
		break;
    }
    
    alarm[0] = spawn_interval;
}
else {
    
    instance_destroy();
}



