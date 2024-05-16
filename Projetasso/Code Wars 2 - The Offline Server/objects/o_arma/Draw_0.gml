draw_self();
if image_speed > 0 {
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_center);
	draw_set_font(f_default_tiny);
	draw_text(o_avelino.x,o_avelino.bbox_top-10,"Reloanding...");
	drawReset();
}