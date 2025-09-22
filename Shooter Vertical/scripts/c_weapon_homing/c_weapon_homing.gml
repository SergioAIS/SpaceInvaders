// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_homing(argument0){
	switch(argument0)
	{
		case 1:
		a = instance_create_layer(x, y-8, "att", o_shot_homing);
		a.direction = 90
		alarm[0] = 30
		audio_play_sound(snd_shot_1, 1, false)
		break;
		
		case 2:
			b = instance_create_layer(x, y-8, "att", o_shot_homing);
			b.direction = 90
			alarm[0] = 21
			audio_play_sound(snd_shot_1, 1, false)
		break;
		
		case 3:
			c = instance_create_layer(x, y-8, "att", o_shot_homing);
			c.direction = 90
			alarm[0] = 15
			audio_play_sound(snd_shot_1, 1, false)
	}
	canShoot = 0;
		//alarm[0] = reloadSpeedHom
}