ativo = false;
image_speed = 0;
switch room {
	case rm_level0:
	case rm_level1:
		enemy = choose(o_bug,o_glitch,o_virus);
		break;
}
alarm[0] = 0;