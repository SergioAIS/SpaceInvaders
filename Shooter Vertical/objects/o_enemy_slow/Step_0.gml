/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

switch (state)
{
	case "enter":
		if (y < targetHeight)
		{
			y += vSpeed;
		}
		else
		{
			state = "fight"
			alarm[1] = fightTime
		}
	break;
	
	case "fight":
		if (canShoot)
		{
			canShoot = 0;
			alarm[0] = reloadSpeed;
	
			obj = instance_create_layer(x, y, "att", o_enemy_shtg);
			obj.direction = point_direction(x, y, obj_player.x, obj_player.y);
		}
	break;
	
	case"escape":
		if (vSpeed < speedMax) vSpeed += accel;
		y += vSpeed;
		
		if (y > room_height + 64) instance_destroy()
	break;
}

