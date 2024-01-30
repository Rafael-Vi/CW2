switch state {
	
	case TRANSITION.StartFade:
		alpha += 1/60;
		if alpha >= 1.1 {
			room_goto(target);
		}	
		break;
	case TRANSITION.EndFade:
		alpha -= 1/60;
		if alpha <= 0 {
			instance_destroy();
		}
		break;
	
}	
