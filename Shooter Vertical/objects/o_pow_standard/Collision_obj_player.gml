if (obj_player.weapon == "multiple")
{
	obj_player.weapon = "standard";

}

if (obj_player.weapon == "homing")
{
	obj_player.weapon = "standard";

}

if (obj_player.weapon == "multiple-homing")
{
	obj_player.weapon = "standard";

}

audio_play_sound(snd_power_up, 1, false);

instance_destroy();


