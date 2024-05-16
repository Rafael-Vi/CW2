if animation != 3 {
	draw_sprite(s_charles_fogo,current_time/125,x,y-10);	
}
event_inherited();
switch (animation) {
	case 1:
		angle = point_direction(x-75,y-70, o_avelino.x, o_avelino.y) + 90;
		if drill < sprite_get_number(s_charles_garra) - 1 {
			drill += 0.15;
		} else {
			drill = sprite_get_number(s_charles_garra) - 1;
		}
		draw_sprite_ext(s_charles_garra,drill,x-75,y-70,1,1,angle,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+75,y-70+sin(current_time/90)*5,1,1,0,c_white,1);
		break;
	case 2:
		draw_sprite_ext(s_charles_garra,drill,x-75,y-70-sin(current_time/90)*3,1,1,0,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+75,y-70+sin(current_time/90)*3,1,-1,0,c_white,1);
		break;
	case 3:
		draw_sprite_ext(s_charles_garra,drill,x-75,y-70+angle,1,1,0,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+75,y-70+angle,1,1,0,c_white,1);
		break;
	default:
		draw_sprite_ext(s_charles_garra,drill,x-75,y-70+sin(current_time/90)*3,1,image_yscale,0,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+75,y-70+sin(current_time/90)*3,1,image_yscale,0,c_white,1);
		break;
}
