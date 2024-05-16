if !place_meeting(x,y,o_enemy_spawner) {
	if image_alpha > 0 {
		image_alpha -= 0.05;
	} else {
		instance_destroy();
	}	
}