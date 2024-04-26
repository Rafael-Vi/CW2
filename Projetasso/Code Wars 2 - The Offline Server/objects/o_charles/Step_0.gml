if ativo {
	if attackTime[0] > 0 {
		switch attack {
			case 1: charlesAttack1(); break;
			case 2: charlesAttack2(); break;
		}
	} else {
		hsp = lengthdir_x(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
		vsp = lengthdir_y(spd, point_direction(x,y,o_avelino.x,o_avelino.y));
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
}