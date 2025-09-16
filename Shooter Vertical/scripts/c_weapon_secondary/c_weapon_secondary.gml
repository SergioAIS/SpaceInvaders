// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_secondary(){
	instance_create_layer(x, y-8, "att", o_bomb);
	canShootSec = 0;
	alarm[3] = reloadSpeedSec;
}