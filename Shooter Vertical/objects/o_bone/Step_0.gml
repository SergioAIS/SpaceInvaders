/// Step Event de o_bone
image_angle += rotation_speed;

if (y > room_height + sprite_height) {
    instance_destroy(); // destruir al salir de la room
}
