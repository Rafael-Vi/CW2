if room >= rm_level0 {
	TransitionEndGui();
	var _room = int64(room);
	var _json = json_stringify({ sala: _room});
	FirebaseFirestore(global.root+"/"+global.playerInfo.id).Update(_json);
	global.playerInfo.sala = room;
	
	instance_create_depth(x,y,1,o_chamber);
}