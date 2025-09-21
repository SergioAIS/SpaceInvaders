if (hp <= 0)
{
	instance_destroy();
}



switch (state) {
    case "fall":
        y += fall_speed;
        if (y > room_height/2) { 
            state = "idle"; // se queda flotando en medio
        }
    break;

    case "idle":
        timer--;
        // explota si el jugador se acerca demasiado
        if (point_distance(x, y, obj_player.x, obj_player.y) < 40 || timer <= 0) {
            state = "explode";
        }
    break;

    case "explode":
        if (!exploded) {
            exploded = true;
            // Explosión radial (8 direcciones)
            count = 5;
            for (i = 0; i < count; i++) {
                ang = i * (360 / count);
                b = instance_create_layer(x, y, "att", o_bone);
                b.direction = ang;
                b.speed = 3;
            }
            instance_destroy();
        }
    break;
}
