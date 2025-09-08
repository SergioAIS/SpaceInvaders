if (canShoot)
{
	canShoot = 0;
	alarm[0] = reloadSpeed;
	
	instance_create_layer(x, y, "att", o_enemy_shot);
}



