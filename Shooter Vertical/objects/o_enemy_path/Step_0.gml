switch (state)
{
    case "entry":
        // Cuando termine el path de entrada, se detendrá
        if (!path_exists(path_index)) // si ya no sigue path
        {
            state = "attack";
        }
    break;

    case "attack":
        // Contar tiempo antes de disparar
        reloadSpeed--;
        if (reloadSpeed <= 0)
        {
            // Crear disparo hacia abajo
            var s = instance_create_layer(x, y, "att", o_enemy_shot);
            s.direction = point_direction(x, y, obj_player.x, obj_player.y);
            s.speed = 3;

            // Cambiar a estado de salida
            path_start(p_enemy_fast, 4, path_action_stop, false);
            state = "exit";
        }
    break;

    case "exit":
        // Aquí simplemente sigue el path de salida hasta dejar el room
        if (y > room_height + 32) {
            instance_destroy();
        }
    break;
}




// Inherit the parent event
event_inherited();

