/// @description Tiempo de espera
/// Wave final -> Boss
if (nextWave == o_wave_boss) {
    var tr = instance_create_layer(0, 0, "GUI", o_transition);
    tr.target_room = r_boss; // Le decimos a dónde ir
}
else if (nextWave != noone) {
    instance_create_layer(x, y, "obj", nextWave);
}

instance_destroy();


