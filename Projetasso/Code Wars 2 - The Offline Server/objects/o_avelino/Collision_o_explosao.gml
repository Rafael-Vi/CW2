if ivccd <= 0 && !other.effect && state = PLAYER.FREE {
	ivccd = 60;
	hp --;
	screenShake(10,2);
	audio_play_sound(a_dano,0,0);
}
