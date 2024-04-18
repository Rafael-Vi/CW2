x = o_avelino.x + o_avelino.hsp;
y = o_avelino.y + o_avelino.vsp - 14;
image_xscale = o_avelino.image_xscale;
switch global.input {
	case 0:
		image_angle = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv))+180*(abs(sign(image_xscale-abs(image_xscale))));
		break;
	default:
		image_angle = point_direction(x,y,mouse_x,mouse_y)+180*(abs(sign(image_xscale-abs(image_xscale))));
		break;
}