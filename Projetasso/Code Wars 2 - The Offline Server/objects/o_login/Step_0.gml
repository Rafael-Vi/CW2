/// @desc Criar e apagar documentos

if place_meeting(x,y,o_mira) && mouse_check_button_released(mb_left) {
	for (var i = 0; i < array_length(data); i++;) {
		var _doc = data[i];
		if (_doc.nome == o_textBox.text && base64_decode(_doc.palavrapasse) == o_textPassBox.text) {
			confirmar = true; 
			global.playerInfo = _doc;
			break;
		} else {
			confirmar = false;
		}
	}
	if (confirmar) {	
		audio_play_sound(a_menu_music,0,true);
		room_goto(rm_main_menu);
	} else {
		with instance_create_depth(o_textBox.x,o_textBox.y,depth-1,o_warnBox) {
			text = "Nome ou palavra-passe incorretos";
		}
	}
}