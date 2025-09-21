// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_bone(){
	canShoot = 0;
    alarm[0] = reloadSpeed;

    // Cantidad de huesos por ráfaga
    var count = irandom_range(3, 6);

    for (var i = 0; i < count; i++) {
        var spawnX = irandom_range(-32, room_width + 32); // puede salir de fuera del room
        var spawnY = -irandom_range(32, sprite_get_height(s_bone) div 2); 

        instance_create_layer(spawnX, spawnY, "att", o_bone);
    }
}