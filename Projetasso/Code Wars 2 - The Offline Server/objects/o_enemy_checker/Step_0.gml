if instance_exists(o_enemy_spawner) {
	if (!place_meeting(x,y,o_enemy_parent) && instance_nearest(x,y,o_enemy_spawner).image_speed != 1) {
		with o_porta {
			if chain = other.chain {
				if room == rm_level0 && instance_exists(o_ngc) {
					open = false;
				} else {
					open = true;
				}
			}
		}
	} else {
		with o_porta {
			if chain = other.chain {
				open = false;
			}
		}
	}
} else {
	if !place_meeting(x,y,o_enemy_parent) {
		with o_porta {
			if chain = other.chain {
				open = true;
			}
		}
	}
}

if !place_meeting(x,y,o_enemy_parent) && !place_meeting(x,y,o_enemy_spawner) {
	instance_destroy();	
}