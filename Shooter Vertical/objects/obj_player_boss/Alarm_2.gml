/// @description Respawn

x = 240
y = 520

alive = 1
hp = hpMax
powLevel = 1
visible = 1
//weapon = "standard"

invi = 1
alarm[1] = inviTime * 2

instance_create_layer(x, y, "att_boss", o_respawn)
