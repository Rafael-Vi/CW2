// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function playerFree(){
	if hp {
		image_speed = 1;
		image_index = 0;
		inputDirection = point_direction(0,0,global.key_right-global.key_left,global.key_down-global.key_up);
		inputMagnitude = (global.key_right - global.key_left != 0) || (global.key_down - global.key_up != 0);
		
		hsp = lengthdir_x(inputMagnitude * walkspd, inputDirection);
		vsp = lengthdir_y(inputMagnitude * walkspd, inputDirection);
		
		if (hsp != 0) image_xscale = sign(hsp);
		
		if global.key_dodge && (hsp != 0 || vsp != 0) {
			hsp *= 1.6;
			vsp *= 1.6;
			state = PLAYER.DASH;
		}
	
		collision();
		
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
}