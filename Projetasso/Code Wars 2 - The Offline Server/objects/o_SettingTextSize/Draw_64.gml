display_set_gui_size(room_width,room_height);

draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(font);
if place_meeting(x,y,o_mira) 
{
	draw_set_color(color_highlighted);
}
else 
{
	draw_set_color(color_default);
}

var displayed_setting;
switch setting
{
	case 0: displayed_setting = scrGetString(219); break;
	case 1: displayed_setting = scrGetString(220); break;
	case 2: displayed_setting = scrGetString(221); break;
	default: displayed_setting = scrGetString(220); break;
}
draw_text(x+sprite_width/2,y+sprite_height/2,string(scrGetString(text))+": "+string(displayed_setting));