switch (state) {
	case PLAYER.FREE:
		playerFree();
		break;
	case PLAYER.DASH:
		playerDash();
		break;
	case PLAYER.DIALOGUE:
		angle = 0;
		sprite_index = s_avelino;
		if showing_text = true {
			image_speed = 1;
		} else {
			image_index = 0;	
			image_speed = 0;
		}
		break;
}