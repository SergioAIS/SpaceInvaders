// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_secondary_boss(){
	instance_create_layer(x, y-8, "att_boss", o_shot_standard_3);
	canShootSec = 0;
	alarm[0] = reloadSpeedSec;
}