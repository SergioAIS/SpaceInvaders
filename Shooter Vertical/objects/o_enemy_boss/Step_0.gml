
event_inherited();

// Chequeo de fases
if (hp <= hpMax * 0.7 && phase == 1) {
    phase = 2;
    reloadSpeed -= 5; // dispara más rápido
    hSpeed += 1;      // se mueve más rápido
    audio_play_sound(snd_phase_change, 1, false); // sonido de transición
}

if (hp <= hpMax * 0.4 && phase == 2) {
    phase = 3;
    reloadSpeed -= 5;
    hSpeed += 1;
   audio_play_sound(snd_phase_change, 1, true); // música más intensa
   audio_stop_sound(snd_phase_change)
}

switch (state)
{
	case "enter":
		if (!audio_is_playing(snd_tense_1)) {
            audio_stop_all(); 
            audio_play_sound(snd_tense_1, 1, false);
        }
		
		if (y < targetHeight)
		{
			y += vSpeed;
		}
		else
		{
			state = "fight"
			audio_stop_all(); 
            audio_play_sound(snd_boss_theme, 1, true);
		}
	break;
	
	case "fight":
    // Movimiento igual
    if (moveLeft) {
        x -= hSpeed;
        if (x <= 70) moveLeft = 0;
    } else {
        x += hSpeed;
        if (x >= room_width - 70) moveLeft = 1;
    }

    if (canShoot) {
        switch (phase) {
            
            case 1:
				atk = choose("bomb", "homing", "multi")
                switch (atk) 
				{ 
					case "bomb":
						c_boss_bomb()
					break;
					
					case "homing": 
						c_boss_homing()
					break; 
					
					case "multi":
						c_boss_multi()
					break;
				}
            break;
            
            case 2:
                atk2 = choose("fan", "rain", "mine")
				switch(atk2)
				{
					case "fan":
						c_boss_fan_attack();
					break;
					
					case "rain":
						c_boss_rain_attack()
					break;
					
					case "mine":
						c_boss_mine()
					break;
				}
            break;
            
            case 3:
                // ataques locos: espiral + invocar adds
                c_boss_spiral();
                if (irandom(100) < 10) {
                    instance_create_layer(irandom(room_width), -32, "obj", o_enemy_slow);
                }
            break;
        }
    }
break;

	
}