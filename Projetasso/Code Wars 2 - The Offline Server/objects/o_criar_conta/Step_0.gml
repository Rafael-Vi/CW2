/// @desc Criar e apagar documentos

if place_meeting(x,y,o_mira) && mouse_check_button_released(mb_left) {
	if (o_textBox.text == ""){
		with instance_create_depth(o_textBox.x,o_textBox.y,depth-1,o_warnBox) {
			text = "Tem de colocar um nome";
		}
		erro = 1;
	} else {
		if (o_textPassBox.text == ""){
			with instance_create_depth(o_textPassBox.x,o_textPassBox.y,depth-1,o_warnBox) {
				text = "Tem de colocar uma palavra-passe";
			}
			erro = 2;
		} else {
			if (o_textPassBox.text != o_textPassBoxConfirm.text) {
				with instance_create_depth(o_textPassBoxConfirm.x,o_textPassBoxConfirm.y,depth-1,o_warnBox) {
					text = "As palavras-passe não coincidem";
				}
				erro = 3;
			} else {
				for (var i = 0; i < array_length(data); i++;) {
					var _doc = data[i];
					if (_doc.nome == o_textBox.text) {
						with instance_create_depth(o_textBox.x,o_textBox.y,depth-1,o_warnBox) {
							text = "Nome de utilizador já existente";
						}
						erro = 4
						break;
					} else {
						erro = false;
					}
				}
			}
		}
	}
	if (!erro) {	
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
}
if (keyboard_check(vk_anykey)) erro = 0;