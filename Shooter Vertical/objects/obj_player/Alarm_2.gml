/// @description Respawn
switch (room)
{
	case r_game:
		x = 240
		y = 520	
	break;
	
	case r_boss:
		x = 352
		y = 736
	break;
}


alive = 1
hp = hpMax
powLevel = 1
visible = 1
//weapon = "standard"
deaths = deaths + 1
if (Score > 100)
{
	Score = Score - 100
}
else
{
	Score = 0
}

invi = 1
alarm[1] = inviTime * 2

instance_create_layer(x, y, "att", o_respawn)
