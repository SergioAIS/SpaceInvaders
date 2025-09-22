// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_rain_attack(){
	canShoot = 0;
	alarm[0] = reloadSpeed;
	instance_create_layer(120, 0, "att", o_enemy_shot)
	instance_create_layer(400, 0, "att", o_enemy_shot)
	instance_create_layer(190, 0, "att", o_enemy_shot)
	instance_create_layer(250, 0, "att", o_enemy_shot)
	instance_create_layer(500, 0, "att", o_enemy_shot)
	instance_create_layer(550, 0, "att", o_enemy_shot)
	instance_create_layer(700, 0, "att", o_enemy_shot)
	instance_create_layer(760, 0, "att", o_enemy_shot)
	audio_play_sound(snd_enemy_shot_4, 2, 0)
	weapon = "mine"
}