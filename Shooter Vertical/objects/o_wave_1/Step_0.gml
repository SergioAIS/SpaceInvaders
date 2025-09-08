// Si ya no queda ningún enemigo en la room
if (instance_number(o_enemy_body) == 0) {
    if (nextWave != noone) {
        instance_create_layer(x, y, "obj", nextWave);
    }
    instance_destroy(); // destruye esta wave (ya terminó)
}
