if place_meeting(x,y,o_avelino) {
	with other {
		with o_avelino {
			if (!place_meeting(x,y,o_porta)) other.ativo = true;
		}
	}
}