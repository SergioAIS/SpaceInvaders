/// @description Minions
// Solo spawneamos si el jefe sigue vivo
if (instance_exists(o_enemy_boss)) {
    xx = irandom_range(25, room_width - 25);
    yy = irandom_range(-10, 0);
    
    choice = irandom(2);
    switch (choice) {
        case 0: 
			instance_create_layer(xx, yy, "obj", o_enemy_pow_shield); 
		break;
		
        case 1: 
			instance_create_layer(xx, yy, "obj", o_enemy_pow_lvlup); 
		break;
		
		case 2:
			instance_create_layer(xx, yy, "obj", o_enemy_pow_heal)
		break;
    }
    
    alarm[0] = spawn_interval;
}



