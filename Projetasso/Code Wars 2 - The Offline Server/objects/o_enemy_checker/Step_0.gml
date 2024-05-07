if instance_exists(o_enemy_spawner) {
	if (!place_meeting(x,y,o_enemy_parent) && instance_nearest(x,y,o_enemy_spawner).image_speed != 1) {
		with o_porta {
			if chain = other.chain {
				open = true;
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