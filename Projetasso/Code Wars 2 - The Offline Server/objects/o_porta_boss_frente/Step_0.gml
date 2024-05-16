switch open {
	case 0:
		if image_index >= image_number - 1 {
			image_speed = -1;
		}
		if image_index <= 1 {
			image_speed = 0;
			image_index = 0;
		}
		break;
	case 1:
		if instance_exists(o_boss) {
			if (collision_rectangle(bbox_left,y-sprite_height/2,bbox_right,y-sprite_height/2+(sign(o_avelino.y-o_boss.y)*20),o_avelino,0,0)) && !instance_exists(o_ngc) {
				open = 2;
			}
		} else {
			open = 2;
		}
		break;
	case 2:
		if image_index <= 0 {
			image_speed = 1;
		}
		if image_index >= image_number - 1 {
			image_speed = 0;
			image_index = image_number - 1;
		}
		break;
	default:
		show_debug_message("ERRO");
		break;
}

if instance_exists(o_boss) {
	if !instance_exists(o_enemy_spawner) && o_boss.ativo != true {
		if (open == 0) open = 1;
		if (collision_line(bbox_left,y-sprite_height/2-(sign(o_avelino.y-o_boss.y)*30),bbox_right,y-sprite_height/2-(sign(o_avelino.y-o_boss.y)*30),o_avelino,0,0)) {
			 o_boss.ativo = true;
		}
	} else {
		open = 0;
	}
} else {
	open = 2;
}
	
