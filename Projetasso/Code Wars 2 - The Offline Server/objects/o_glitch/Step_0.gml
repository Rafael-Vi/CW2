if (hsp != 0) image_xscale = sign(hsp);
collision();

if hp <= 0 {
	instance_destroy();
}

if shooting {
	hsp = 0;
	vsp = 0;
	bullet_cd --;
	if bullet_cd <= 0 {
		bullet_cd = 120;
		createBullet(15);
		createBullet(-15);
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