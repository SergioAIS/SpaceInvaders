
function c_weapon_multiple_boss(argument0)
{
	switch(argument0)
	{
		case 1:
			
			var b1 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			b1.direction = 80; 
			b1.speed = 12;

			var b2 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			b2.direction = 100;
			b2.speed = 12;
		break;
		
		case 2:
			var c1 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			c1.direction = 70;
			c1.speed = 12;

			var c2 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			c2.direction = 90;
			c2.speed = 12;

			var c3 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			c3.direction = 110;
			c3.speed = 12;
		break;
		
		case 3:
			var d1 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			d1.direction = 180; 
			d1.speed = 12;

			var d2 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			d2.direction = 70; 
			d2.speed = 12;

			var d3 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			d3.direction = 90; 
			d3.speed = 12;

			var d4 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			d4.direction = 110; 
			d4.speed = 12;

			var d5 = instance_create_layer(x, y-8, "att_boss", o_shot_multiple);
			d5.direction = 0; 
			d5.speed = 12;
		break;
	}
	
	canShoot = 0;
	alarm[0] = reloadSpeed;
}