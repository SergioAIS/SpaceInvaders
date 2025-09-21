// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_bone_mine(){
	canShoot = false;
    alarm[0] = reloadSpeed;

    // Cuántas minas lanza por ataque
    var count = 3;
    for (var i = 0; i < count; i++) {
        var mx = x + irandom_range(-80, 80); // se tiran un poco dispersas
        var my = y + 20;
        instance_create_layer(mx, my, "att", o_enemy_bone_mine);
    }
	weapon = "fan"
}