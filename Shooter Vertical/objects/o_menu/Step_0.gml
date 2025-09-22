if (keyboard_check_pressed(vk_anykey))
{
	audio_play_sound(snd_select, 1, 0)
	room_goto_next()
}