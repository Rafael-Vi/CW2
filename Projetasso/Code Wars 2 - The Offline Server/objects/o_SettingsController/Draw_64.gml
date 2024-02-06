//Display which menu you're currently in
display_set_gui_size(room_width,room_height);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font_menu_extralarge);
draw_set_color(c_white);

//Display menu title
switch room
{
	case rmSettings: draw_text(x,y,string(scrGetString(101))); break;
	case rmDisplaySettings: draw_text(x,y,string(scrGetString(201))); break;
	case rmAudioSettings: draw_text(x,y,string(scrGetString(202))); break;
	case rmInterfaceSettings: draw_text(x,y,string(scrGetString(203))); break;
	default: draw_text(x,y,""); break;
}