if hp {
	inputDirection = point_direction(0,0,global.key_right-global.key_left,global.key_down-global.key_up);
	inputMagnitude = (global.key_right - global.key_left != 0) || (global.key_down - global.key_up != 0);
	
	hsp = lengthdir_x(inputMagnitude * walkspd, inputDirection);
	vsp = lengthdir_y(inputMagnitude * walkspd, inputDirection);
	
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
	
	if (hsp != 0 || vsp != 0) angle += (abs(hsp)+abs(vsp)); else angle = 0;
	
	if (ivccd > 0) {
		ivccd --;
	}
} else {
	deathcd --;
	if !deathcd {
		room_restart();
	}
}