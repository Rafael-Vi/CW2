// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function update(_json){
	if !global.offline {
		FirebaseFirestore(global.root+"/"+global.playerInfo.id).Update(_json);
	}
}