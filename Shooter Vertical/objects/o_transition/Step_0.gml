/// Control de la transición

switch (state) {
    
    case "fade_in": // Pantalla oscureciéndose
        alpha += 0.05; // Velocidad del fade (ajusta a tu gusto)
        if (alpha >= 1) {
            alpha = 1;
            room_goto(target_room); // Cambio de room
            state = "fade_out";     // Pasamos al estado de revelar la nueva room
        }
    break;
    
    case "fade_out": // Pantalla aclarándose
        alpha -= 0.05;
        if (alpha <= 0) {
            instance_destroy(); // Eliminamos el objeto al terminar
        }
    break;
}
