// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function createBullet(_dirPlus = 0,_bulletType=o_balaIni,_creator = id, _destiny = o_avelino, _speed = 3){
	with instance_create_layer(x,y,"Balas",_bulletType) {
		direction = point_direction(_creator.x,_creator.y,_destiny.x,_destiny.y)+_dirPlus;
		speed = _speed;
		image_angle = direction;
	}
}