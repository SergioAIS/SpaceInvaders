
// Inherit the parent event
event_inherited();

if (!start)
{
	path_start(path, pSpeed, path_action_continue, 0)
	start = 1
}
if (canShoot)
{
	canShoot = 0;
	alarm[0] = reloadSpeed;
	
	instance_create_layer(x, y, "att", o_enemy_shot);
	audio_play_sound(snd_enemy_shot_1, 1, false)
}
if (y > 780) instance_destroy()