if (obj_player.weapon == "standard")
{
	obj_player.weapon = "homing";

}

if (obj_player.weapon == "multiple")
{
	obj_player.weapon = "multiple-homing"
}

audio_play_sound(snd_power_up, 1, false);

instance_destroy();
