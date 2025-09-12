
repeat(6)
instance_create_layer(x+irandom_range(-50,50),y+irandom_range(-110,110),"att_boss",o_boom_boss);

repeat(10)
instance_create_layer(x+irandom_range(-110,110),y+irandom_range(-110,110),"att_boss",o_boom);

obj_player_boss.alarm[11] = room_speed * 3.5;