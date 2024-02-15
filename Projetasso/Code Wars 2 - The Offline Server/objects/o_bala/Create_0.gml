speed = 6;
switch global.input {
	case 0:
		direction = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv));
		break;
	default:
		direction = point_direction(x,y,mouse_x,mouse_y);
		break;
}
image_angle = direction;
