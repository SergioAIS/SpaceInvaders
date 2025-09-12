/// @description Tiempo de espera
if (nextWave != noone)
{
	room_goto_next()
	instance_create_layer(x, y, "obj", nextWave)
}
instance_destroy()


