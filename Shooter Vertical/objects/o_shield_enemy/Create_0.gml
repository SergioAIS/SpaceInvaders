hp = 30;
dmg = 20;
reloadSpeed = room_speed * 2;

vSpeed = 4;
accel = 0.1;
speedMax = 8;

// behaviour --------

state = "enter"; // enter , fight , escape

canShoot = 0;
alarm[0] = irandom_range(30,reloadSpeed);

targetHeight = 300 + ystart;
fightTime = room_speed * 6;


instance_create_layer(x, y, "obj", o_enemy_shield)
