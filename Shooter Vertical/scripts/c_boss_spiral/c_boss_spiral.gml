// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_spiral(){
	canShoot = 0;
	alarm[0] = reloadSpeed;

	if (!variable_global_exists("spiral_angle")) {
	    global.spiral_angle = 0;
	}

	var bullets = 10; // número de proyectiles en círculo
	for (var i = 0; i < bullets; i++) {
	    var angle = global.spiral_angle + (i * (360 / bullets));
	    var b = instance_create_layer(x, y, "att", o_enemy_shot);
	    b.direction = angle;
	    b.speed = 1;
	}

	// Incrementa el ángulo base para que rote en cada disparo
	global.spiral_angle += 15;
}