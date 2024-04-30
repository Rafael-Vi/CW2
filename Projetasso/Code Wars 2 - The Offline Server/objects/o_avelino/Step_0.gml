switch (state) {
	case PLAYER.FREE:
		playerFree();
		break;
	case PLAYER.DIALOGUE:
		sprite_index = s_avelino_fala;
		angle = 0;
		if showing_text = true {
			image_speed = 1;
		} else {
			image_index = 0;	
			image_speed = 0;
		}
		break;
}