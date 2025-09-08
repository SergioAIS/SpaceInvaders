
// Inherit the parent event
event_inherited();

if (!start)
{
	path_start(path, pSpeed, path_action_stop, 0)
	start = 1
}
if (canShoot)
{
	canShoot = 0;
	alarm[0] = reloadSpeed;
	
	instance_create_layer(x, y, "att", o_enemy_shot);
}