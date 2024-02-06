if place_meeting(x,y,o_mira) && o_mira.input_left && setting < max_setting
{
	audio_play_sound(sndValueChange,0,0);
	setting++;
}
if place_meeting(x,y,o_mira) && o_mira.input_right && setting > min_setting
{
	audio_play_sound(sndValueChange,0,0);
	setting--;
}

switch global.text_size
{
	case 0: font = font_menu_small; break;	
	case 1: font = font_menu_medium; break;	
	case 2: font = font_menu_large; break;	
	default: font = font_menu_medium; break;
}