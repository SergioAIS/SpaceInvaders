image_angle = 270
if (y < room_height + 130)
	{
		y += vSpeed;
	}

if (hp <= 0 ) || (y > room_height + 130)
{
	instance_destroy();
}