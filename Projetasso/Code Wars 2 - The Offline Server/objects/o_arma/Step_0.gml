var _comprimento = 12;
if bullet_cd <= 0 {
	if (global.key_attack) {
		switch global.input {
			case 0:
				var _angle = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv));
				break;
			default:
				var _angle = point_direction(x,y,mouse_x,mouse_y);
				break;
		}
		instance_create_depth(x+_comprimento*cos(degtorad(_angle)),y-_comprimento*sin(degtorad(_angle)),depth-1,o_bala)
	}
	bullet_cd = 30;
} else {
	bullet_cd --;
}

