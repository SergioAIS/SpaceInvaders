if (alive)
{
    if (hp <= 0)
    {
        alive = 0;
        visible = 0;
        instance_create_layer(x, y, "att", o_boom);
        y += 500;
        alarm[2] = respawnTime;
    }

    // ======================
    // Dash input
    // ======================

    if (!is_dashing)
    {
        // Input de movimiento normal
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
            if (vSpeed < -speedmax) vSpeed = -speedmax;
        }

        if (keyboard_check(vk_down))
        {
            vSpeed += accel;
            if (vSpeed > speedmax) vSpeed = speedmax;
        }

        // Checks para soltar teclas
        if (!keyboard_check(vk_right) and !keyboard_check(vk_left)) hSpeed = 0;
        if (!keyboard_check(vk_up) and !keyboard_check(vk_down)) vSpeed = 0;
        if (keyboard_check(vk_right) and keyboard_check(vk_left)) hSpeed = 0;
        if (keyboard_check(vk_up) and keyboard_check(vk_down)) vSpeed = 0;

        // Movimiento normal
        x += hSpeed;
        y += vSpeed;

        // ====== Activar Dash ======
        if (keyboard_check_pressed(ord("X")) && dash_cooldown <= 0)
        {
            is_dashing = true;
            dash_timer = dash_time;
            dash_cooldown = dash_cooldown_max;

            // Guardar dirección
            dash_h = keyboard_check(vk_right) - keyboard_check(vk_left);
            dash_v = keyboard_check(vk_down) - keyboard_check(vk_up);

            // Si no hay dirección, dash hacia arriba
            if (dash_h == 0 && dash_v == 0) dash_v = -1;

        }
    }
    else
    {
        // Movimiento durante el dash
        x += dash_h * dash_speed;
        y += dash_v * dash_speed;
        dash_timer--;

        if (dash_timer <= 0)
        {
            is_dashing = false;
        }
    }

    // Reducir cooldown
    if (dash_cooldown > 0) dash_cooldown--;

    // ======================
    // Límites
    // ======================

    if (x > room_width - (sprite_width /2)) x = room_width - (sprite_width/2);
    if (x < sprite_width/2) x = sprite_width/2;
	if (room = r_game)
	{
		if (y > room_height - 50) y = room_height - 50
	}else if (room = r_boss)
	{
		if (y > room_height - 65) y = room_height - 65
	}else
	{
		if (y > room_height - 75) y = room_height - 75
	}
    //if (y > room_height-(sprite_height/2)) y = room_height-(sprite_height/2);
	if (y < sprite_height/2) y = sprite_height/2
    //if (y < room_height/2) y = room_height/2;

    // ======================
    // Ataques
    // ======================
if (room != r_end and room != r_credits)
{
    if (keyboard_check(ord("Z")) and canShoot) 
    {
        switch(weapon)
        {
            case "standard":
                c_weapon_standard(powLevel);
            break;
            
            case "multiple":
                c_weapon_multiple(powLevel);
            break;
			
			case "homing":
				c_weapon_homing(powLevel)
			break;
			
			case "multiple-homing":
				c_weapon_multiple_homing(powLevel)
			break;
        }
    }
	
	if (keyboard_check(ord("C")) and canShootSec)
	{
		c_weapon_secondary()
	}
}
}
