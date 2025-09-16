// Evento Room Start en o_musicController
switch(room)
{
    case r_start:
        audio_stop_all();
        audio_play_sound(snd_Title_Theme, 1, true);
    break;
    
    case r_game:
        audio_stop_all();
        audio_play_sound(snd_main_theme, 1, true);
    break;
    
    //case r_boss:
    //    audio_stop_all();
    //    audio_play_sound(snd_boss_theme, 1, true);
    //break;
	
	case r_end:
		audio_stop_all()
		audio_play_sound(snd_end, 1, false)
	break;
}
