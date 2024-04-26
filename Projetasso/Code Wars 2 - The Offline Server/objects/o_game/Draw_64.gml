if instance_exists(o_avelino) {
	var _padding = 35;
	var _spacing = 25;
	for (var i = 0; i < o_avelino.fullhp; i+=2) {
		if (i < o_avelino.hp && i != o_avelino.hp-1) {
			draw_sprite_ext(s_heart, 0, _padding + _spacing * i, _padding,2,2,0,c_white,1);	
		} else {
			if (i == o_avelino.hp-1) {
				draw_sprite_ext(s_heart, 1, _padding + _spacing * i, _padding,2,2,0,c_white,1);
			} else {
				draw_sprite_ext(s_heart, 2, _padding + _spacing * i, _padding,2,2,0,c_white,1);
			}
		}
	}
	draw_sprite_ext(asset_get_index(sprite_get_name(o_arma.sprite_index) + "_hud"),o_arma.image_index,display_get_gui_width()-_padding*1.5,display_get_gui_height()-_padding,5,5,0,c_white,1);
	for(var i = 0; i < o_arma.bullet; i++) {
		draw_sprite(s_bala_joltaca,0,display_get_gui_width()-_padding,display_get_gui_height()-_padding - sprite_get_height(s_bala_joltaca) * 1.5 * i);
	}
}

if instance_exists(o_boss) {
	if o_boss.ativo = 1 {
		var _y = display_get_gui_height()-40;
		var _padding = 200;
		draw_text(_padding,_y-20,o_boss.name);
		var _col1 = make_color_rgb(76,5,7);
		var _col2 = c_red;
		var _width = display_get_gui_width()-_padding*2;
		draw_rectangle_color(_padding - 1, _y-1, _padding + _width +1		, _y+11, c_black, c_black, c_black, c_black, false);
		draw_rectangle_color(_padding, _y, _padding + _width				, _y+10, _col1,   _col1,   _col1,   _col1,   false);
		draw_rectangle_color(_padding, _y, _padding + _width*(o_boss.hp/o_boss.full_hp)	, _y+10, _col2,   _col2,   _col2,   _col2,   false);
		if (isAdmin()) draw_text(display_get_gui_width()/2,_y,o_boss.hp);
	}
}