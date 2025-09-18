// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_boss_bomb(){
	canShoot = 0;
    alarm[0] = reloadSpeed * 2;

    var bomb = instance_create_layer(x, y, "att", o_enemy_bomb);
    bomb.speed = 3;
    bomb.direction = 270; // hacia abajo
    bomb.explodeHeight = 400; // altura donde explota

    //audio_play_sound(snd_bomb_drop, 1, false);

    weapon = "homing"; // puedes cambiar la siguiente arma
}