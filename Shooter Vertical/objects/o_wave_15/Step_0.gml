// Si ya no queda ningún enemigo en la room

if (instance_number(o_enemy) == 0 && !alarm[0])
{
	alarm[0] = room_speed * 3
}	

