// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function damagePlayer(){
	if o_avelino.ivccd <= 0 && o_avelino.state == PLAYER.FREE {
		o_avelino.ivccd = 60;
		o_avelino.hp --;
	}
}