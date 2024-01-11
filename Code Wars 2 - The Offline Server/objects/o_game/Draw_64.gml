if instance_exists(o_avelino) {
	var padding = 30;
	for (var i = 0; i < o_avelino.hp; i++) {
		draw_sprite(s_heart, 0, padding + 40 * i, padding);
	}
}

