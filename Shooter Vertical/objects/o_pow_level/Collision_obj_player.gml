if (obj_player.powLevel < obj_player.powMax)
{
	obj_player.powLevel += 1;
}

audio_play_sound(snd_power_up, 1, false);

instance_destroy();
