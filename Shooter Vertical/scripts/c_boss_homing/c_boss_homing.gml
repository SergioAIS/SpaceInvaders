// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_homing(){
		canShoot = 0;
		alarm[0] = reloadSpeed;	
					
		shotDir = point_direction(x, y, obj_player.x, obj_player.y)
					
		obj = instance_create_layer(x, y, "att", o_enemy_shot_hom)
		obj.direction= shotDir
					
		obj = instance_create_layer(x, y, "att", o_enemy_shot_hom)
		obj.direction= shotDir + 15
					
		obj = instance_create_layer(x, y, "att", o_enemy_shot_hom)
		obj.direction= shotDir - 15
	
		weapon = "multi"
}