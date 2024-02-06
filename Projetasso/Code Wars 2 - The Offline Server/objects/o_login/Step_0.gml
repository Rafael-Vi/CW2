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
		confirmar = false;
		room_goto(rmMenu);
	} else {
		show_message("Nome ou palavra-passe incorretos");
	}
}