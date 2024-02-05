if instance_exists(o_avelino) {
	var padding = 30;
	for (var i = 0; i < o_avelino.fullhp; i+=2) {
		if (i < o_avelino.hp && i != o_avelino.hp+1) {
			draw_sprite(s_heart, 0, padding + 20 * i, padding);	
		} else {
			if (i == o_avelino.hp+1) {
				draw_sprite(s_heart, 1, padding + 20 * i, padding);
			} else {
				draw_sprite(s_heart, 2, padding + 20 * i, padding);
			}
		}
	}
}

