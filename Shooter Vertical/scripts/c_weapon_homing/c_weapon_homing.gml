// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_homing(){
	var b = instance_create_layer(x, y-8, "att", o_shot_homing);
	b.direction = 90
	canShoot = 0;
	alarm[0] = reloadSpeed
}