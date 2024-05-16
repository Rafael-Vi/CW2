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
		animationStart(s_glitch_tiro);
		if (animationEnd() && sprite_index == s_glitch_tiro) {
			bullet_cd = 120;
			sprite_index = s_glitch;
			audio_play_sound(a_glitch,0,0);
			for (var i = -1; i<2; i++) {
				createBullet(15*i);
			}
		}
	}	
	if distance_to_object(o_avelino) > 150 && sprite_index != s_glitch_tiro{
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