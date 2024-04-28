// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function charlesAttack1(){
	animation = 1;
	var _time = 90;
	if angle == point_direction(x-100,y-114,o_avelino.x, o_avelino.y) + 90 {
		if (alarm_get(0) <= 0) {
			alarm[0] = _time;
			hsp = lengthdir_x(spd*4, point_direction(x,y,o_avelino.x,o_avelino.y));
			vsp = lengthdir_y(spd*4, point_direction(x,y,o_avelino.x,o_avelino.y));
		} else {
			if (alarm_get(0) <= 30) {
				hsp = 0;
				vsp = 0;
			}
		}
	}
}

function charlesAttack2(){
	var _time = 60;
	hsp = 0;
	vsp = 0;
	if animation != 2 {
		if image_yscale > 0 {
			image_yscale -= 0.05;
		} else {
			image_yscale = 0;
			x = irandom_range(944,1360);
			y = irandom_range(288,672);
			animation = 2;
		}
	} else {
		if image_yscale < 1 {
			image_yscale += 0.05;
			alarm[0] = _time;
		} else {
			image_yscale = 1;
			
			if (alarm_get(0) <= 0) {
				alarm[0] = _time;
				instance_create_depth(x+100,y-242,depth,o_pneu);
			} 
		}
	}
	
	
}