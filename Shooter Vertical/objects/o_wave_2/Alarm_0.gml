/// @description Tiempo de espera
if (nextWave != noone)
{
	with (o_game_manager)
    {
        global.current_level++;
        show_level_text = true;
        alarm[0] = room_speed * 2; // Mostrar el texto por 2 segundos
    }
    
	instance_create_layer(x, y, "obj", nextWave)
}
instance_destroy()




