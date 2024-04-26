var multiplierx = camera_get_view_width (view_camera[0]) / 640;
var multipliery = camera_get_view_height(view_camera[0]) / 360;
var hDir = global.key_right_rAxis - global.key_left_rAxis;
var vDir = global.key_up_rAxis    - global.key_down_rAxis;
switch follow {
	case o_boss:
		follow_x = round((o_boss.x + o_avelino.x) / 2 );
		follow_y = round((o_boss.y + o_avelino.y) / 2 );
		break;
	case o_avelino:
		var _aimDir = point_direction(0, 0, gamepad_axis_value(0,gp_axisrh), gamepad_axis_value(0,gp_axisrv));
		if o_mira.visible == true {
			follow_x = round((o_mira.x + o_avelino.x) / 2);
			follow_y = round((o_mira.y + o_avelino.y) / 2);
		} else {
			follow_x = round((o_avelino.x) + lengthdir_x(30,_aimDir));
			follow_y = round((o_avelino.y) + lengthdir_y(30,_aimDir));
		}
		break;
	default:
		follow_x = follow.x;
		follow_y = follow.y;
		break;
}

if instance_exists(follow) {
	if follow == o_avelino && (hDir != 0 || vDir != 0) {
		xTo = follow_x + display_get_gui_width()  / 2.5 * multiplierx * (hDir/2);
		yTo = follow_y + display_get_gui_height() / 3   * multiplierx * (vDir/2);
	} else {
		xTo = follow_x;
		yTo = follow_y - 30 * multipliery;
	}
	x += (xTo - x) / 15;
	y += (yTo - y) / 15;
}	

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));
