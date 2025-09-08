//Stats
hp = 30;
dmg = 20;
reloadSpeed = room_speed * 2;


vSpeed = 4;
accel = 0.1;
speedMax = 8;


// Behavior - Comportamiento
canShoot = 0;

alarm[0] = irandom_range(30, reloadSpeed);

state = "enter"; //enter , fight, escape

targetHeight = ystart + 300;
fightTime = room_speed * 6;


