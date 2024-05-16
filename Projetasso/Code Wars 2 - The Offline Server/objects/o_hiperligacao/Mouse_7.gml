if place_meeting(x,y,o_mira) {
	if (destino >= rm_level0) TransitionStartGui(destino); else room_goto(destino);
}

if destino == rm_main_menu {
	var _data = 
	{
		sala: 6,
		som_geral: 10,
		som_musica: 10,
		som_efeitos: 10,
		som_ui: 10
	}
	global.playerInfo = _data;
	global.offline = true;
	//var _json = json_stringify(_data);
}