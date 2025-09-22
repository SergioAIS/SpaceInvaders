// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_fan_attack(){
	canShoot = 0;
	alarm[0] = reloadSpeed;

	var spread = 100;   // ángulo total del abanico
	var count  = 7;    // número de balas
	var base_dir = point_direction(x, y, obj_player.x, obj_player.y);

	for (var i = 0; i < count; i++) {
	    var angle = base_dir - spread/2 + (i * (spread/(count-1)));
	    var b = instance_create_layer(x, y, "att", o_enemy_shot);
	    b.direction = angle;
	    b.speed = 1.5;
	}
	audio_play_sound(snd_enemy_shot_1, 2, 0)
	weapon = "rain"
}