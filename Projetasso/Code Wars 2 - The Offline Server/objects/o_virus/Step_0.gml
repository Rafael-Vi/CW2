if (place_meeting(x,y,o_avelino) || hp == 0) {
	image_speed = 1;
}
if animationEnd() {
	instance_destroy();
}
if (hsp != 0) image_xscale = sign(hsp);

collision();

if (instance_exists(o_avelino)) {
	if (image_speed == 0) {
		hsp = lengthdir_x(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
		vsp = lengthdir_y(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
	} else {
		hsp = 0;
		vsp = 0;
	}
	if image_index >= 6 {
		if image_index <= 6 {
			instance_create_depth(bbox_left,  bbox_top,	   depth-1, o_explosao); 
			instance_create_depth(bbox_left,  bbox_bottom, depth-1, o_explosao);
			instance_create_depth(bbox_right, bbox_top,    depth-1, o_explosao);
			instance_create_depth(bbox_right, bbox_bottom, depth-1, o_explosao);
			audio_play_sound(a_virus,0,0);
		}
		if place_meeting(x,y,o_avelino) {
			damagePlayer();
		}
	}
}
