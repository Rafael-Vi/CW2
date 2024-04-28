x = o_avelino.x + lengthdir_x(dist,aimDir);
y = o_avelino.y - 20 + lengthdir_y(dist,aimDir);
depth = o_avelino.depth - 4;

switch global.input {
	case 0:
		aimDir = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv));
		break;
	default:
		aimDir = point_direction(x,y,mouse_x,mouse_y);
		break;
}

image_angle = aimDir;

if aimDir > 90 && aimDir < 270 {
	image_yscale = -1;
} else {
	image_yscale = 1;
}

if animationEnd() {
	image_speed = 0;
	image_index = image_number - 1;
	bullet = max_bullet;
}

var _xOffset = lengthdir_x(length + dist, aimDir);
var _yOffset = lengthdir_y(length + dist, aimDir);
if bullet > 0 {
	if alarm[0] <= 0 {
		if (global.key_attack) {
			switch (arma) {
				case ARMA.JOLT:
					changeGun(s_joltaca,6,20);
					with instance_create_layer(x + _xOffset, y + _yOffset, "Balas", o_bala) {
						direction = other.image_angle;
						image_angle = direction;
					}
					break;
				case ARMA.RJ45:
					changeGun(s_rj45,6,20);
					with instance_create_layer(x + _xOffset, y + _yOffset, "Balas", o_bala) {
						direction = other.image_angle;
						image_angle = direction;
					}
					break;
			}
			bullet --;
			alarm[0] = bullet_cd
		}
	}
} else {
	if bullet != -10 {
		image_index = 0;
		image_speed = 1;
		bullet = -10;
	}
}
