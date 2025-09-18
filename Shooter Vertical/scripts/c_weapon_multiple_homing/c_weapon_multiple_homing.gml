// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_multiple_homing(argument0){
	switch (argument0)
	{
		case 1:
	    var b1 = instance_create_layer(x, y-8, "att", o_shot_multiple);
	    b1.direction = 70;
	    b1.speed = 12;

	    var b2 = instance_create_layer(x, y-8, "att", o_shot_multiple);
	    b2.direction = 110;
	    b2.speed = 12;

	    var h = instance_create_layer(x, y-8, "att", o_shot_homing);
	    h.direction = 90; 
		break;
		
		case 2:
			var b1 = instance_create_layer(x, y-8, "att", o_shot_multiple);
		    b1.direction = 70;
		    b1.speed = 12;

		    var b2 = instance_create_layer(x, y-8, "att", o_shot_multiple);
		    b2.direction = 110;
		    b2.speed = 12;

		    var h = instance_create_layer(x, y-8, "att", o_shot_homing);
		    h.direction = 90; 
		
			var d5 = instance_create_layer(x, y-8, "att", o_shot_multiple);
			d5.direction = 0; 
			d5.speed = 12;
			
			var d6 = instance_create_layer(x, y-8, "att", o_shot_multiple);
			d6.direction = 180; 
			d6.speed = 12;
		break;
		
		case 3:
			var h = instance_create_layer(x, y-8, "att", o_shot_homing);
		    h.direction = 110; 
			
			var h = instance_create_layer(x, y-8, "att", o_shot_homing);
		    h.direction = 90; 
			
			var h = instance_create_layer(x, y-8, "att", o_shot_homing);
		    h.direction = 70; 
			
			var d5 = instance_create_layer(x, y-8, "att", o_shot_multiple);
			d5.direction = 0; 
			d5.speed = 12;
			
			var d6 = instance_create_layer(x, y-8, "att", o_shot_multiple);
			d6.direction = 180; 
			d6.speed = 12;
		break;
			
	}
    canShoot = 0;
    alarm[0] = reloadSpeed * 2.2
}