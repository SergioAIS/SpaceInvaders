/// @description Spawn Enemy
if (number > 0)
{
	number -= 1
	obj = instance_create_layer(x, y, "obj", enemy)
	obj.path = path
	
	alarm[0] = spawnTime
}
else
{
	instance_destroy()
}



