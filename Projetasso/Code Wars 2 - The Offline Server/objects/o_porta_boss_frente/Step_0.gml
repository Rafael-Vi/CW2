event_inherited();
if instance_exists(o_boss) {
	if !instance_exists(o_enemy_spawner) && o_boss.ativo != true {
		open = 1;
		if (collision_line(bbox_left,bbox_top-20,bbox_right,bbox_top-20,o_avelino,0,0)) {
			 o_boss.ativo = true;
		}
	} else {
		open = 0;
	}
} else {
	open = 1;
}
	
