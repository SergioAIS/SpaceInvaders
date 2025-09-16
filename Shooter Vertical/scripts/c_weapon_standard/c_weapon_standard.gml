// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_standard(argument0)
{
	switch(argument0)
	{
		case 1:
			instance_create_layer(x, y-8, "att", o_shot_def);
			audio_play_sound(snd_shot_1, 1, false)
		break;
		
		case 2:
			instance_create_layer(x, y-8, "att", o_shot_standard_2);
			audio_play_sound(snd_shot_1, 1, false)
		break;
		
		case 3:
			instance_create_layer(x, y-8, "att", o_shot_standard_3);
			audio_play_sound(snd_shot_1, 1, false)
		break;
	}
	
	canShoot = 0;
	alarm[0] = reloadSpeed;
}