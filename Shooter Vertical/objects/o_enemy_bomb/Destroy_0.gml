var num = 12; // cantidad de balas
for (var i = 0; i < num; i++) {
    var ang = i * (360 / num);
    var shot = instance_create_layer(x, y, "att", o_enemy_shot);
    shot.direction = ang;
    shot.speed = 6;
}

audio_play_sound(snd_explosion, 1, false);
