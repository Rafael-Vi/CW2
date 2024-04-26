if place_meeting(x,y,o_avelino) {
	if place_meeting(x,y,o_boss) {
		o_boss.ativo = 1;
		o_camera.follow = o_boss;
	}
	with other {
		with o_avelino {
			if (!place_meeting(x,y,o_porta)) other.ativo = true;
		}
	}
}