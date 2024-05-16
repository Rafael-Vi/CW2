if (dmgcd > 0) {
	gpu_set_fog(true, c_white, 0, 1);
	dmgcd --;
} else gpu_set_fog(false, c_white, 0, 1);
if object_index == o_virus || object_index == o_bug || object_index == o_pincel_oeste {
	switch object_index {
		case o_bug:
			if sprite_index == s_bug_tiro || shooting {
				angle = point_direction(x,y,o_avelino.x,o_avelino.y) + 90;
			} else {
				angle = point_direction(x,y,x + hsp,y + vsp) + 90;	
			}
			draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,image_alpha);	
			break;
		case o_virus:
			if vsp != 0 || hsp != 0 {
				angle = point_direction(x,y,x + hsp,y + vsp) + 90;
			} 
			draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,image_alpha);	
			break;
		case o_pincel_oeste:
			draw_self();
			var _aimdir = point_direction(x,y,o_avelino.x,o_avelino.y);
			if _aimdir > 90 && _aimdir < 270 {
				var _yscale = -1;
			} else {
				var _yscale = 1;
			}

			draw_sprite_ext(s_pincel_arma,0,x,y-10,1,_yscale*1,_aimdir,c_white,1);
			break;
		default:
			angle = 0;
			draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,image_alpha);	
			break;
	}
} else {
	draw_self();
}
gpu_set_fog(false, c_white, 0, 1)