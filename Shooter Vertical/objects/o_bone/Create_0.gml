/// Create Event de o_bone
speed = irandom_range(4, 7);     // velocidad aleatoria
direction = 270;                 // siempre hacia abajo
image_angle = irandom(360);      // arranca con un ángulo random
image_speed = 0;                 // desactivamos animación si usas un sprite único
rotation_speed = irandom_range(-8, 8); // cuánto rota por frame


dmg = 10