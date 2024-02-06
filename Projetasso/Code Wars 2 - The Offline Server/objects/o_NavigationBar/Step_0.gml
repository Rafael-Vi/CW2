switch global.text_size
{
	case 0: font = font_menu_small; break;	
	case 1: font = font_menu_medium; break;	
	case 2: font = font_menu_large; break;	
	default: font = font_menu_medium; break;
}

switch room
{
	case rmMenu:
	switch global.input
	{
		case -2: text = 223; break;
		case -1: text = 222; break;
		default: text = 224; break;
	}
	visible = true;
	break;
	
	case rmSettings:
	switch global.input
	{
		case -2: text = 223; break;
		case -1: text = 222; break;
		default: text = 224; break;
	}
	visible = true;
	break;
	
	case rmCredits:
	visible = false;
	break;
	
	default:
	switch global.input
	{
		case -2: text = 226; break;
		case -1: text = 225; break;
		default: text = 227; break;
	}
	visible = true;
	break;
}