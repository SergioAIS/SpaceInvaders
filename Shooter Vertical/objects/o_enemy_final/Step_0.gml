/// Boss Final - Step Event
event_inherited();

// Chequeo de fases
if (hp <= hpMax * 0.5 && phase == 1) {
    phase = 2;
    reloadSpeed -= 20; // más rápido
    move_speed += 1;   // más ágil
    audio_play_sound(snd_phase_change, 1, false);
}

switch (state)
{
    case "descend":
        // bajar hasta targetHeight
        if (y < targetHeight) {
            y += move_speed;
        } else {
            // cuando llega empieza a buscar vértices
            state = "move";
            target_x = irandom_range(32, room_width - 32);
            target_y = irandom_range(64, room_height - 80);
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
            image_angle = dir; // 🔥 ahora rota hacia el movimiento
			
            if (point_distance(x, y, target_x, target_y) < move_speed) {
                // llegó al punto
                x = target_x;
                y = target_y;
                pause_time = room_speed; // 1 segundo
                target_x = irandom_range(32, room_width - 32);
                target_y = irandom_range(64, room_height - 80);
            }
        }
		
        if (canShoot) {
            var atk;
            if (phase == 1) {
                atk = choose("bone", "homing", "fan");
            } else {
                atk = choose("rain", "mine", "spiral");
            }

            switch (atk) {
                case "bone":     c_boss_bone(); break;
                case "homing":   c_boss_homing(); break;
                case "fan":      c_boss_fan_attack(); break;

                case "rain":     c_boss_rain_attack(); break;
                case "mine":     c_boss_bone_mine(); break;
                case "spiral":   c_boss_bone_spiral(); break;
            }
        }
    break;
}
