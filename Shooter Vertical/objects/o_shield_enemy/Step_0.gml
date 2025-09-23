
// Inherit the parent event
event_inherited();

switch(state)
{
	case "enter":
		if(y < targetHeight)
		{
			y += vSpeed;
		}
		else
		{
			state = "fight";
			vSpeed = 1;
		}
	break;
	
	case "fight":
		if(canShoot)
		{
			canShoot = 0;
			alarm[0] = reloadSpeed;
	
			obj = instance_create_layer(x,y,"att",o_enemy_shot_hom);
			obj.direction = point_direction(x,y,obj_player.x,obj_player.y);
			audio_play_sound(snd_enemy_shot_2, 1, false)
		}
	break;
	
	
}
