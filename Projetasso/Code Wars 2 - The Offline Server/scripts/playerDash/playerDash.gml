// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function playerDash(){
	collision();
	animationStart(s_avelino_dash);
	if animationEnd() && sprite_index == s_avelino_dash {
		sprite_index = s_avelino;
		state = PLAYER.FREE;
	}
}