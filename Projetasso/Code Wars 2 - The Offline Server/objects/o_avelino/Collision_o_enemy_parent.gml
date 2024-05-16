if ivccd <= 0 && other.object_index != o_virus && state = PLAYER.FREE{
	ivccd = 60;
	hp --;
	screenShake(10,2);
	audio_play_sound(a_dano,0,0);
}
