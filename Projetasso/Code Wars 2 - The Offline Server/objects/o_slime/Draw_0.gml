if (dmgcd > 0) {
	gpu_set_fog(true, c_white, 0, 1);
	dmgcd --;
} else gpu_set_fog(false, c_white, 0, 1);
draw_self();
gpu_set_fog(false, c_white, 0, 1)