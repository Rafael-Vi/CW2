if (hsp != 0) image_xscale = sign(hsp);
image_angle = point_direction(x,y,o_avelino.x,o_avelino.y)+90;
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

if hp <= 0 {
	instance_destroy();
}

if shooting {
	hsp = 0;
	vsp = 0;
	bullet_cd --;
	if bullet_cd <= 0 {
		bullet_cd = 120;
		createBullet();
	}	
	if distance_to_object(o_avelino) > 150 {
		shooting = false;
	}
} else {
	if (distance_to_object(o_avelino) > 3) {
		hsp = lengthdir_x(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
		vsp = lengthdir_y(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
	} else {
		hsp = 0;
		vsp = 0;
	}
	if distance_to_object(o_avelino) < 100 {
	shooting = true;
}
}