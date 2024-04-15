cam = view_camera[0];
follow = o_avelino;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
xnerf = 0;
ynerf = 0;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
