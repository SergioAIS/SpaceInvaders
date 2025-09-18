

// Inherit the parent event
event_inherited();

switch (state)
{
	case "descend":
        // bajar hasta targetHeight
        if (y < targetHeight) {
            y += move_speed;
        } else {
            // cuando llega empieza a buscar vértices
            state = "move";
            target_x = irandom_range(32, 480 - 32); // 32 de margen a los lados
			target_y = irandom_range(64, 470);      // margen arriba para que no se meta en HUD
        }
    break;
	
	case "move":
        if (pause_time > 0) {
            pause_time--;
			
        } else {
            // moverse al siguiente vértice
            var dir = point_direction(x, y, target_x, target_y);
            x += lengthdir_x(move_speed, dir);
            y += lengthdir_y(move_speed, dir);
			
			
            
            if (point_distance(x, y, target_x, target_y) < move_speed) {
                // llegó al punto
                pause_time = room_speed; // 1 segundo
                target_x = irandom_range(32, 480 - 32); // 32 de margen a los lados
				target_y = irandom_range(64, 400);      // margen arriba para que no se meta en HUD
            }
        }
		
		if (canShoot)
		{
			canShoot = 0;
			alarm[0] = reloadSpeed;
	
			obj = instance_create_layer(x, y, "att", o_enemy_shot_hom);
			obj.direction = point_direction(x, y, obj_player.x, obj_player.y);
		}
    break;
}


