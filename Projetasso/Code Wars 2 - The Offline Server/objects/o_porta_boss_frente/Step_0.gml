event_inherited();
if !instance_exists(o_boss) {
	if !instance_exists(o_enemy_spawner) && o_boss.ativo != true {
		open = 1;
		if place_meeting(x,bbox_top-o_avelino.bbox_bottom,o_avelino) {
			o_boss.ativo = true;
		}
	} else {
		open = 0;
	}
	open = 1;
}
	
