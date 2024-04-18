var _comprimento = 4;
depth = o_avelino.depth - 10;
if animationEnd() {
	image_speed = 0;
	image_index = image_number - 1;
}
if image_index = image_number - 1 {
	if (global.key_attack) {
		switch global.input {
			case 0:
				var _angle = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv));
				break;
			default:
				var _angle = point_direction(x,y,mouse_x,mouse_y);
				break;
		}
		with instance_create_layer(x+_comprimento*cos(degtorad(_angle)),y-_comprimento*sin(degtorad(_angle)),"Balas",o_bala) {
			direction = other.image_angle+180*(sign(o_avelino.image_xscale-1));
			image_angle = direction;
		}
		image_speed = 1;
		image_index = 0;
	}
} 

