// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function screenShake(_shake_magnitude, _shake_length) {
	with (o_camera) {
		if (_shake_magnitude > shake_remain) {
			shake_magnitude = _shake_magnitude;
			shake_remain = _shake_magnitude;
			shake_length = _shake_length;
		}	
	}	
}
