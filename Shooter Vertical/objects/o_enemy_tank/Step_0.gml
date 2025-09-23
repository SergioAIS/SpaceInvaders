
event_inherited();

switch (state)
{
	case "enter":
		if (y < targetHeight)
		{
			y += vSpeed;
		}
		else
		{
			state = "fight"
		}
	break;
	
	case "fight":
		
		if (canShoot)
		{
			switch (weapon)
			{
				case "homing":
					canShoot = 0;
					alarm[0] = reloadSpeed;	
					
					shotDir = point_direction(x, y, obj_player.x, obj_player.y)
					
					obj = instance_create_layer(x, y, "att", o_enemy_shot_hom)
					obj.direction= shotDir
					
					obj = instance_create_layer(x, y, "att", o_enemy_shot_hom)
					obj.direction= shotDir + 15
					
					obj = instance_create_layer(x, y, "att", o_enemy_shot_hom)
					obj.direction= shotDir - 15
					
					audio_play_sound(snd_enemy_shot_1, 1, false)
					
					weapon = "multi"
				break;
				
				case "multi":
					canShoot = 0;
					alarm[0] = reloadSpeed;
	
					instance_create_layer(x, y, "att", o_enemy_shot);
					
					instance_create_layer(x + 50, y, "att", o_enemy_shot);
					
					instance_create_layer(x - 50, y, "att", o_enemy_shot);
					 
					 audio_play_sound(snd_enemy_shot_2, 1, false)
					 
					 weapon = "homing"
				break;
			}
		}
	break;
	
}