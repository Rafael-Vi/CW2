// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function ngcDialogue(){
	#region Dialogue	
	//Quem diz oq
	text_[0	,1] = o_ngc;
	text_[1	,1] = o_avelino;
	text_[2	,1] = o_ngc ;
	text_[3	,1] = o_avelino ;
	text_[4	,1] = o_ngc;
	text_[5	,1] = o_avelino;
	text_[6	,1] = o_ngc ;
	text_[7	,1] = o_ngc;
	text_[8	,1] = o_ngc;
	text_[9	,1] = o_avelino; 
	text_[10,1] = o_ngc;
	text_[11,1] = o_ngc;
	text_[12,1] = o_avelino;
	text_[13,1] = o_ngc ;
	text_[14,1] = o_ngc ;
	text_[15,1] = o_ngc;

	
	//Lines
	text_[0	,0] = "Olá, quem és tu?\nNunca te tinha visto pelo servidor"									;
	text_[1	,0] = "Sou o Azel Pear Tree"																		; //Sapo
	text_[2	,0] = "Ah, aquele que gere o servidor?\nO que fazes aqui dentro?"																			;//mosca
	text_[3	,0] = "O meu colega JJ desligou o servidor\nE agora tenho de o encontrar"											;
	text_[4	,0] = "É...\nTem sido dificil operar as\nbases de dados do servidor desde que ele foi a baixo"											;//sapo
	text_[5	,0] = "Bases de dados?"																		;//mosca
	text_[6	,0] = "Ah, não me apresentei, eu sou a Narnia THE GOAT Costa\nOu NGC.\nEu sou quem guarda tudo o que se passa por aqui"												;
	text_[7	,0] = "Essa arma que tu tens é meio rafeira...\nComprás-te a no chinês?"																			;
	text_[8	,0] = "Assim, para além de gerir bases de dados eu também sou ótima em\n construir armas a partir de restos de guardiões"	; //SApo
	text_[9	,0] = "Não estou a entender onde queres chegar.\nE o que é um guardião"	;
	text_[10,0] = "Ah, esqueci-me que não costumas andar por cá,\nentão desde que o servidor foi abaixo que tem\num guardião no fim de cada camada"																			;//Mosca
	text_[11,0] = "Se os conseguires derrotar, eu posso te arranjar umas armas melhores";
	text_[12,0] = "Ok, fixe\nJá queria sair desta camada de qualquer maneira"										;	//SApo
	text_[13,0] = "Ok, então encontro-me contigo no fim da camada"; //Mosca														
	text_[14,0] = ""																;	
	text_[15,0] = ""	;
	
	
	if (text_[dialogue,1] != o_ngc) text_[dialogue,1].text = text_[dialogue,0]; else text = text_[dialogue,0];
	#endregion
	
	if showing_text = true {
		image_speed = 1;
	} else {
		image_index = 0;
		image_speed = 0;
	}
	
	if (dialogue >= 0 && dialogue < array_length(text_) - 1 && text_[dialogue,0] != "") {
		o_avelino.state = PLAYER.DIALOGUE;
		switch (text_[dialogue,1]) {
			case o_ngc :
				createText();
				//if (!audio_is_playing(a_big_rosca)) audio_play_sound(a_big_rosca, 1000, true);
				break;
			case o_avelino :
				with o_avelino {
					createText();
				}
				//if (!audio_is_playing(a_sapo_fala)) audio_play_sound(a_sapo_fala, 1000, true);
				break;
		}
	} else {
		o_avelino.state = PLAYER.FREE;
		instance_destroy();
	}
}