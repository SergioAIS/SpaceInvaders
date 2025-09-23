c_spawn_points();

//Control
nextWave = o_wave_meteoritos

//Spawn actions

instance_create_layer(x3, -60, "obj", o_pow_level)
c_spawn_height(x1, y4, o_enemy_pow_heal);
c_spawn_height(x2, y4, o_enemy_trg)
c_spawn_height(x4, y2, o_enemy_slow)
c_spawn_height(x6, y3, o_enemy_slow)
c_spawn_height(x1, y3, o_enemy_slow)

obj_player.level = obj_player.level + 1