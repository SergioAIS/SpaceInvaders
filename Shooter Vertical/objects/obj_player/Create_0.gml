//Stats
hpMax = 50;
hp = hpMax;
Score = 0

inviTime = room_speed/2;
respawnTime = room_speed * 3;

//Control
invi = 0;
alive = 1;
deaths = 0;

//Movimiento
hSpeed = 0;
speedmax = 9;
vSpeed = 0;
accel = 0.75;

//Ataques
canShoot = 1;
canShootSec = 1
reloadSpeed = 15;
reloadSpeedSec = room_speed * 8
reloadSpeedHom = 25

powLevel = 1;
powMax = 3;
weapon = "standard";

// ======================
// Dash system 
// ======================

// Velocidad del dash
dash_speed = 16; 
// Duración del dash en frames
dash_time = 10; 
// Cooldown antes de volver a usarlo
dash_cooldown_max = room_speed
// Control interno
dash_timer = 0;
dash_cooldown = 0;
is_dashing = false;
dash_h = 0;
dash_v = 0;
