if (room = r_credits)
{
	if (keyboard_check(vk_escape))
	{
		game_end()
	}
}
else
{
	if (keyboard_check_pressed(vk_anykey))
	{
		audio_play_sound(snd_select, 1, 0)
		room_goto_next()
	}
}