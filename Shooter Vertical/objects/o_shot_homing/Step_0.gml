//y -= vSpeed;

var target = instance_nearest(x, y, o_enemy_body);
if (instance_exists(target)) {
    // Dirección hacia el enemigo
    var dir_to_target = point_direction(x, y, target.x, target.y);
    
    // Girar poco a poco hacia el objetivo
    direction = lerp(direction, dir_to_target, turn_speed / 100);
}

x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

image_angle = direction - 90

if (y < -32) instance_destroy()