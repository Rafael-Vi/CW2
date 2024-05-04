alpha -= 0.025;
draw_set_halign(fa_center);
var _y = display_get_gui_height()/2 - 100;
var _x = display_get_gui_width()/2;
draw_text_color(_x,_y,"Nível " + string(int64(room) - int64(rm_level0)) + "\n----------------------------\n" + text[int64(room) - int64(rm_level0)],c_white,c_white,c_white,c_white,alpha);
drawReset();
if alpha <= 0 {
	instance_destroy();
}