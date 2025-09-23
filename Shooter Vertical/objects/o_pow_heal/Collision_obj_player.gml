if (obj_player.hp < obj_player.hpMax)
{
	obj_player.hp += 10;
}
instance_destroy();

audio_play_sound(snd_hp, 2, 0)