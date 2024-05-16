y += vsp;
vsp += grv;
image_angle += 20;
switch state {
	case 0:
		vsp = -10;
		if bbox_bottom + 20 < camera_get_view_y(view_camera[0]) {
			x = irandom_range(o_avelino.x-10,o_avelino.x+10);
			y = camera_get_view_y(view_camera[0]) - 30;
			y_fin = irandom_range(o_avelino.y-10,o_avelino.y+10);
			state = 1;
		}
		break;
	case 1:
		if y >= y_fin {
			instance_destroy();
		}
		break;
}