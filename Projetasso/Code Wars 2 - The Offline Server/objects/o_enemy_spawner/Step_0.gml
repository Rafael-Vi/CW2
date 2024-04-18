switch room {
	case rm_level1:
		var _enemy = choose(o_bug,o_glitch,o_virus);
		break;
}
if ativo {
	instance_create_depth(x+random_range(10,-10),y+random_range(10,-10),depth,_enemy);
	instance_destroy();
}
