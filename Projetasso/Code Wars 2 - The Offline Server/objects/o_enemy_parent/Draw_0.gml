if (dmgcd > 0) {
	gpu_set_fog(true, c_white, 0, 1);
	dmgcd --;
} else gpu_set_fog(false, c_white, 0, 1);
if object_index == o_virus || object_index == o_bug{
	if vsp != 0 || hsp != 0 {
		angle = point_direction(x,y,x + hsp,y + vsp) + 90;
		if object_index == o_bug {
			if shooting {
				angle = point_direction(x,y,o_avelino.x,o_avelino.y) + 90;
			}
		}
	} 
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,image_alpha);	
} else {
	draw_self();
}
gpu_set_fog(false, c_white, 0, 1)