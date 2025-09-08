// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_spawn_height(argument0, argument1, argument2) //A0 = Coordenada X, A1 = target height, A2 = enemy type
{
	obj = instance_create_layer(argument0, yDefault, "obj", argument2)
	obj.targetHeight = argument1
}