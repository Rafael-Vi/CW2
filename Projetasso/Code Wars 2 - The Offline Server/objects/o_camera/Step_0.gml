var multiplierx = camera_get_view_width (view_camera[0]) / 640;
var multipliery = camera_get_view_height(view_camera[0]) / 360;
var hDir = global.key_right_rAxis - global.key_left_rAxis;
var vDir = global.key_up_rAxis    - global.key_down_rAxis;
if instance_exists(follow) {
	if follow == o_avelino && (hDir != 0 || vDir != 0) {
		xTo = follow.x + display_get_gui_width()  / 2.5 * multiplierx * (hDir/2);
		yTo = follow.y + display_get_gui_height() / 3   * multiplierx * (vDir/2);
	} else {
		xTo = follow.x;
		yTo = follow.y - 30 * multipliery;
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
