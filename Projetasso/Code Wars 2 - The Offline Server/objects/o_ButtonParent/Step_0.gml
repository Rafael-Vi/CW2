if place_meeting(x,y,o_mira) && o_mira.input_interact && o_mira.pressed == false 
{
	o_mira.pressed = true;
	o_mira.alarm[0] = 10;
	script_execute(action);
}

switch global.text_size
{
	case 0: font = font_menu_small; break;	
	case 1: font = font_menu_medium; break;	
	case 2: font = font_menu_large; break;	
	default: font = font_menu_medium; break;
}