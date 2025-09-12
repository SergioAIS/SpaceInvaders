/// @description Tiempo de espera
/// Wave final -> Boss
if (nextWave == o_wave_boss) {
    var tr = instance_create(0, 0, o_transition);
    tr.target_room = r_boss;
    tr.depth = -999999;
}
else if (nextWave != noone) {
    instance_create(x, y, nextWave);
}

instance_destroy();


