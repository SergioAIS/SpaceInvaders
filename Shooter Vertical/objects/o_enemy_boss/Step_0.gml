
event_inherited();

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
		if (moveLeft)
		{
			x -= hSpeed
			if (x <= 70) moveLeft = 0
		}
		else
		{
			x += hSpeed
			if (x >=room_width - 70) moveLeft = 1
		}
		
		if (canShoot)
		{
			switch (weapon)
			{
				case "homing":
					c_boss_homing()
				break;
				
				case "multi":
					canShoot = 0;
					alarm[0] = reloadSpeed;
	
					instance_create_layer(x, y, "att", o_enemy_shot);
					
					instance_create_layer(x + 50, y, "att", o_enemy_shot);
					
					instance_create_layer(x - 50, y, "att", o_enemy_shot);
					
					audio_play_sound(snd_enemy_shot_1, 1, false)
					 
					 weapon = "homing"
				break;
			}
		}
	break;
	
}