c_spawn_points();

//Control
nextWave = o_wave_14

//Spawn actions

instance_create_layer(x3, y, "obj", o_enemy_pow_lvlup)
c_spawn_height(x2, y4, o_enemy_pow)
c_spawn_height(x2, y4, o_enemy_pow_heal)
c_spawn_height(x7, y4, o_shield_enemy)
c_spawn_height(x4, y2, o_enemy_speedster)
c_spawn_height(x6, y3, o_enemy_trg)
c_spawn_height(x1, y3, o_enemy_trg)

obj_player.level = obj_player.level +1