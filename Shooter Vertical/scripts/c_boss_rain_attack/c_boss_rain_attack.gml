// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_rain_attack(){
	canShoot = 0;
    alarm[0] = reloadSpeed * 1; // en vez de *3, que no tarde tanto

    var count = 15; // más balas para que se note
    var spread_x = room_width - 100; // ocupa casi toda la pantalla
    var start_x = 50;

    for (var i = 0; i < count; i++) {
        var drop_x = start_x + irandom(spread_x);
        var drop_y = -16;

        var b = instance_create_layer(drop_x, drop_y, "att", o_enemy_shot);
        b.direction = 90 + irandom_range(-8, 8); // ángulo un poco caótico
        b.speed = random_range(3, 6);
    }
}