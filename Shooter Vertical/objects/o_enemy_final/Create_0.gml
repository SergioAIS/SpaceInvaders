/// Boss Final - Create Event
hp = 200;
hpMax = 200;

vSpeed = 6;
dmg = 20;

canShoot = 1;
reloadSpeed = 90;

targetHeight = y + 300;

state = "descend";   // primero baja
move_speed = 6;

target_x = x;
target_y = targetHeight;

pause_time = 0; // contador de pausa

phase = 1;

image_xscale = 3
image_yscale = 3


spawn_timer1 = room_speed * 10;
spawn_timer2 = room_speed * 15;
spawn_timer3 = room_speed * 20;
