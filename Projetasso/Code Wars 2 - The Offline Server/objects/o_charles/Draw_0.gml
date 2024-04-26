event_inherited();
switch (animation) {
	case 1:
		angle = point_direction(x-100,y-114, o_avelino.x, o_avelino.y) + 90;
		draw_sprite_ext(s_charles_garra,0,x-100,y-114,1,1,angle,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+100,y-114+sin(current_time/90)*5,1,1,current_time/10,c_white,1);
		break;
	case 2:
		angle = current_time/10;
		draw_sprite_ext(s_charles_garra,0,x-100,y-114-sin(current_time/90)*3,1,1,-angle,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+100,y-114+sin(current_time/90)*3,1,-1,0,c_white,1);
		break;
	default:
		angle = current_time/10;
		draw_sprite_ext(s_charles_garra,0,x-100,y-114-sin(current_time/90)*3,1,image_yscale,-angle,c_white,1);
		draw_sprite_ext(s_charles_arma,0,x+100,y-114+sin(current_time/90)*3,1,image_yscale,angle,c_white,1);
		break;
}
