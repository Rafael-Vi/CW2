x = mouse_x;
y = mouse_y;
if (global.key_attack) {
	image_angle += 8;
	image_speed = 0;
	image_index = 0;
} else {
	if image_angle > 0 {
		if image_angle > 0.1 {
			image_angle -= image_angle/8;
		} else {
			image_angle = 0;
			image_speed = 1;
		}
	} else {
		image_angle = 0;
		image_speed = 1;
	}
}

