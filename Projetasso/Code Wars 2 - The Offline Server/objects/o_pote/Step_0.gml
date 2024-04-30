depth = 5000;
switch (state) {
	case 0:
		if place_meeting(x,y,o_avelino) {
			for (var i = 0; i<4;i++) {
				with instance_create_depth(x,y,depth,o_pote) {
					image_index = i+1;
					state = 1;
				}
			}
			instance_destroy();
		}
		break;
	case 1:
		if !updated {
			direction = irandom_range(0,360);
			speed = irandom_range(1,2);
			updated = 1;
		} else {
			image_angle += rotDir * speed * 30;
			if speed > 0 && !place_meeting(x,y,o_wall) {
				speed -= 0.05;
			} else {
				speed = 0;
			}
		}
		break;
}