
instance_create_layer(x, y, "obj", o_boom)

audio_play_sound(snd_explosion, 2, 0)

obj_player.Score = obj_player.Score + 50

obj_player.cont_tank = obj_player.cont_tank + 1