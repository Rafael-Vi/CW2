switch room
{
	case rmMenu:
	if !audio_is_playing(sndMusicSample) audio_play_sound(sndMusicSample,1,true);
	break;
	
	default:
	//Do nothing
	break;
}