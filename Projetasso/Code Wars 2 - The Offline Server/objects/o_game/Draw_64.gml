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
}

