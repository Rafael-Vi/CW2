if ativo {
	if hp > 0 {
		if attackTime[0] > 0 {
			switch attack {
				case 1: charlesAttack1(); break;
				case 2: charlesAttack2(); break;
			}
		} else {
			hsp = lengthdir_x(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
			vsp = lengthdir_y(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
			if drill > 0 {
				drill -= 0.15;
			}
			animation = 0;
		}
		collision();
		for (var i = 0; i<=1;i++) {
			if attackTime[i] != -10 {
				if (attackTime[i] > 0) {
				    attackTime[i] -= 1; 
				} else {
					if (attackTime[i] <= 0) {
						switch i {
							case 0:
								attackTime[1] = 240;
								break;
							case 1:							
								attack = irandom_range(1,2);
								if attack == 1 {
									attackTime[0] = 300;
								} else {
									attackTime[0] = 360;
								}
								break;
						}
						attackTime[i] = -10;
				    }
				}
			}
		}
	} else {
		if hp != -10 {
			angle = 0;
			vsp = -10
			hp = -10;
		} else {
			var _grv = 0.5;
			vsp += _grv;
			angle += vsp;
		}
		animation = 3;
		if !instance_exists(o_explosao) {
			for (var i = 0; i<3; i++) {
				with instance_create_depth(random_range(bbox_left,bbox_right),random_range(bbox_top,bbox_bottom),depth-10,o_explosao) {
					effect = 1;
				}
			}
		}
		if angle >= 800 {
			image_alpha -= 0.05;
			if image_alpha <= 0 {
				instance_destroy();
			}
		}
	}
}