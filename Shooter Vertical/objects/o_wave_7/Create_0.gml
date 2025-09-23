c_spawn_points(); // Control de posiciones

nextWave = o_wave_8

// Spawns de esta wave
c_spawn_height(x1, y4, o_enemy_pow_heal);
c_spawn_height(x2, y3, o_enemy_slow);
c_spawn_height(x5, y3, o_shield_enemy);
c_spawn_height(x7, y3, o_enemy_pow_shield);


obj_player.level = obj_player.level + 1