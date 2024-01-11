if bullet_cd <= 0 {
	if (global.key_attack) {
		instance_create_depth(x,y,depth-1,o_bala);
	}
	bullet_cd = 30;
} else {
	bullet_cd --;
}

