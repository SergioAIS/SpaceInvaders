// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_multi(){
	canShoot = 0;
	alarm[0] = reloadSpeed;
	instance_create_layer(x, y, "att", o_enemy_shot);
	instance_create_layer(x + 50, y, "att", o_enemy_shot);
	instance_create_layer(x - 50, y, "att", o_enemy_shot);
	audio_play_sound(snd_enemy_shot_1, 1, false)
	weapon = "bomb"
}