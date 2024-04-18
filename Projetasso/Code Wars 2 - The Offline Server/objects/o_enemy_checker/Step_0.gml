if !place_meeting(x,y,o_enemy_parent) {
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