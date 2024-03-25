speed = 6;
var _precision = 5;
switch global.input {
case 0:
		direction = point_direction(0, 0, random_range(gamepad_axis_value(0,gp_axisrh)*100-_precision, gamepad_axis_value(0,gp_axisrh)*100+_precision), random_range(gamepad_axis_value(0,gp_axisrv)*100-_precision, gamepad_axis_value(0,gp_axisrv)*100+_precision));
		break;
	default:
		direction = point_direction(x,y,random_range(mouse_x-_precision,mouse_x+_precision),random_range(mouse_y-_precision,mouse_y+_precision));
		break;
}
image_angle = direction;
