if ivccd <= 0 && !other.effect && state = PLAYER.FREE {
	ivccd = 60;
	hp --;
	screenShake(10,2);
}
