if (dmgcd > 0) {
	gpu_set_fog(true, c_white, 0, 1);
	dmgcd --;
} else gpu_set_fog(false, c_white, 0, 1);
var _angle = point_direction(x,y,o_avelino.x,o_avelino.y)+90;
draw_sprite_ext(sprite_index,image_index,x,y,1,1,_angle,c_white,image_alpha);
gpu_set_fog(false, c_white, 0, 1)