if (!instance_exists(o_enemy_body)) {
    if (nextWave != noone) {
        instance_create_layer(x, y, "obj", nextWave);
    }
    instance_destroy();
}

