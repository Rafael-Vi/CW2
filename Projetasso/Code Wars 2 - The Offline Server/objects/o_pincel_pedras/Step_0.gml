collision();

if hp <= 0 {
	instance_destroy();
}

if shooting {
	hsp = 0;
	vsp = 0;
	bullet_cd --;
	if bullet_cd <= 0 {
		bullet_cd = 30;
		createBullet(,,,y-10);
	}	
	if distance_to_object(o_avelino) > 150 {
		shooting = false;
	}
} else {
	var _hdistance = abs(x-o_avelino.x);
	var _vdistance = abs(y-o_avelino.y);
	var _hsp = sign(o_avelino.x-x) * spd;
	var _vsp = sign(o_avelino.y-y) * spd;
	//if collision_line(x,y,o_avelino.x,y,o_wall,false,false) {
	//	going = 5;
	//	if collision_line(x,y,x,o_avelino.y,o_wall,false,false) {
	//		going = 3;
	//	}
	//} else {
	//	if collision_line(x,y,x,o_avelino.y,o_wall,false,false) {
	//		going = 4;
	//	} else {
			if !going {
				if _hdistance > _vdistance {
					going = 1;
				} else {
					going = 2;
				}
			}
	//	}
	//}
	switch (going) {
		case 1:
		case 4:
			if _hdistance <= 100 && going != 4 {
				going = 0;
			} else {
				hsp = _hsp;
				vsp = 0;
			}
			break;
		case 2:
		case 5:
			if _vdistance <= 100 && going != 5 {
				going = 0;
			} else {
				hsp = 0;
				vsp = _vsp;
			}
			break;
		case 3:
			hsp = _hsp;
			vsp = _vsp;
			if (distance_to_object(o_avelino) <= 100) going = 0;
			break;
		default:
			hsp = 0;
			vsp = 0;
			break;
	}
	
	if distance_to_object(o_avelino) < 100 {
		shooting = true;
	}
}