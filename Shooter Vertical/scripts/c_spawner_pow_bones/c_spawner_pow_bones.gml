// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_spawner_pow_bones(){
	spawn_timer1--;
    if (spawn_timer1 <= 0) {
        instance_create_layer(irandom_range(50, room_width - 100), irandom_range(-10, -1), "obj", o_enemy_bone_pow1);
        spawn_timer1 = room_speed * 10;
    }
	
	spawn_timer2--;
    if (spawn_timer2 <= 0) {
        instance_create_layer(irandom_range(50, room_width - 100), irandom_range(-10, -1), "obj", o_enemy_bone_pow2);
        spawn_timer2 = room_speed * 15;
    }
	
	spawn_timer3--;
    if (spawn_timer3 <= 0) {
        instance_create_layer(irandom_range(50, room_width - 100), irandom_range(-10, -1), "obj", o_enemy_bone_pow3);
        spawn_timer3 = room_speed * 20;
    }
}