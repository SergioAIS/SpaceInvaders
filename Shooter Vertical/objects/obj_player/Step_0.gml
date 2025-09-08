if (alive)
{
	
	if (hp <= 0)
	{
		alive = 0;
		visible = 0
		
		instance_create_layer(x, y, "att", o_boom)
		y += 500
		
		alarm[2] = respawnTime
	}
//Input
if (keyboard_check(vk_right))
{
	hSpeed  += accel;
	if (hSpeed > speedmax) hSpeed = speedmax;
}

if (keyboard_check(vk_left))
{
	hSpeed -= accel;
	if (hSpeed < -speedmax) hSpeed = -speedmax;
}

if (keyboard_check(vk_up))
{
	vSpeed -= accel;	
	if(vSpeed < -speedmax) vSpeed = -speedmax;
}

if (keyboard_check(vk_down))
{
	vSpeed += accel;
	if(vSpeed > speedmax) vSpeed = speedmax;
}

//Checks
if (!keyboard_check(vk_right) and !keyboard_check(vk_left)) 
{
	hSpeed=0;
}

if (!keyboard_check(vk_up) and !keyboard_check(vk_down)) 
{
	vSpeed=0;
}

if (keyboard_check(vk_right) and keyboard_check(vk_left))
{
	hSpeed = 0;
}

if (keyboard_check(vk_up) and keyboard_check(vk_down)) 
{
	vSpeed=0;
}

//Movimiento

x += hSpeed;
y += vSpeed;

//Límites

if (x > room_width - (sprite_width /2)) x = room_width - (sprite_width/2);
if (x < sprite_width/2) x = sprite_width/2;
if (y > room_height-(sprite_height/2)) y = room_height-(sprite_height/2);
if (y < room_height/2) y = room_height/2;

//Ataques

if (keyboard_check(vk_control) and canShoot) 
{
	switch(weapon)
	{
		case "standard":
			c_weapon_standard(powLevel);
		break;
		
		case "multiple":
			c_weapon_multiple(powLevel);
		break;
	}
}
//Alive check }
} 
