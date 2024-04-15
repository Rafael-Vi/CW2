// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function UpdateState(_value){
	if !global.offline {
		var _json = json_stringify({ state: _value});
		show_debug_message(_json);
		FirebaseFirestore(global.root+"/"+global.playerInfo.id).Update(_json);
		global.playerInfo.state = _value;
	}
}