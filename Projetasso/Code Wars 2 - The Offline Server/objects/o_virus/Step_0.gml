if (place_meeting(x,y,o_avelino)) {
	image_speed = 1;
}
if (image_speed == 0)image_angle = point_direction(x,y,o_avelino.x,o_avelino.y)+90;
if animationEnd() {
	instance_destroy();
}
if (hsp != 0) image_xscale = sign(hsp);

if place_meeting(x, y + vsp,o_wall) {
	while(!place_meeting(x, y + sign(vsp), o_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}	

y += vsp;
	
if place_meeting(x + hsp,y,o_wall) {
	while(!place_meeting(x + sign(hsp), y, o_wall)) {
		x = x + sign(hsp);
	}	
	hsp = 0;
}	

x += hsp;

if (instance_exists(o_avelino)) {
	if (image_speed == 0) {
		hsp = lengthdir_x(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
		vsp = lengthdir_y(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
	} else {
		hsp = 0;
		vsp = 0;
	}
}

if hp <= 0 {
	instance_destroy();
}