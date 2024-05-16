// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function charlesAttack1(){
	if animation != 1 {
		animation = 1;
		alarm[0] = 30;
	}
	var _time = 90;
	if (alarm[0] <= 0) && drill == sprite_get_number(s_charles_garra) - 1{
		alarm[0] = _time;
		hsp = lengthdir_x(spd*4, point_direction(x,y,o_avelino.x,o_avelino.y));
		vsp = lengthdir_y(spd*4, point_direction(x,y,o_avelino.x,o_avelino.y));
	} else {
		if (alarm[0] <= 30) || drill != sprite_get_number(s_charles_garra) - 1 {
			hsp = 0;
			vsp = 0;
		}
	}
	
}

function charlesAttack2(){
	var _time = 60;
	hsp = 0;
	vsp = 0;
	if animation != 2 {
		if image_yscale > 0.1 {
			image_yscale -= 0.05;
		} else {
			image_yscale = 0.1;
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
				instance_create_depth(x+75,y-170,depth,o_pneu);
			} 
		}
	}
	
	
}