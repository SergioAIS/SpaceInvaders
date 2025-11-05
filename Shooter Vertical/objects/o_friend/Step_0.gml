if (canShoot)
{
	instance_create_layer(x, y, "att", o_shot_def)
	canShoot = 0
	alarm[0] = 35
}

x= obj_player.x - 30;

y= obj_player.y - 30;
