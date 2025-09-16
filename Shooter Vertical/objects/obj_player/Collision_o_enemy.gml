if (invi == 0)
{
	hp -= other.dmg;
	invi = 1;
	alarm[1] = inviTime;
	audio_play_sound(snd_hurt, 1, false)
}

