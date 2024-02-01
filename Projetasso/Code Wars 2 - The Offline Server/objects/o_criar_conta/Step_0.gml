/// @desc Criar e apagar documentos

if place_meeting(x,y,o_mira) && mouse_check_button_released(mb_left) {
	if (o_textBox.text == ""){
		show_message("Tem de colocar um nome");
	} else {
		if (o_textPassBox.text == ""){
			show_message("Tem de colocar uma palavra-passe");
		} else {
			if (o_textPassBox.text != o_textPassBoxConfirm.text) {
				show_message("As palavras-passe não coincidem");
			} else {
				for (var i = 0; i < array_length(data); i++;) {
					var _doc = data[i];
					if (_doc.nome == o_textBox.text) {
						confirmar = false; 
						show_message("Esse nome já existe");
						break;
					} else {
						confirmar = true;
					}
				}
			}
		}
	}
}
if (confirmar) {	
	confirmar = false;
	var _doc = json_stringify
	( 
		{
			nome: o_textBox.text,
			palavrapasse: base64_encode(o_textPassBox.text),
			room: rm_level1
		}
	);
	FirebaseFirestore(global.root).Set(_doc);
	show_message("Utilizador criado com sucesso");
	room_goto(rm_menu_login);
}