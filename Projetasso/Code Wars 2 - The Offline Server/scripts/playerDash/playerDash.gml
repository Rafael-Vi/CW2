// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function playerDash(){
	collision();
	image_speed = 1;
	animationStart(s_avelino_dash);
	if animationEnd() && sprite_index == s_avelino_dash {
		state = PLAYER.FREE;
	}
}