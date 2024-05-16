draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1);
display_set_gui_size(room_width,room_height);

draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if place_meeting(x,y,o_mira) 
{
	draw_set_color(color_highlighted);
}
else 
{
	draw_set_color(color_default);
}
draw_text(x+sprite_width/2,y+sprite_height/2,text+": "+string(setting*10)+"%");
drawReset();