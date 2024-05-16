// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function ngcDialogue(){
	#region Dialogue
	switch room {
		case rm_level0:
			text_[0	,1] = o_avelino;
			text_[1	,1] = o_ngc;
			text_[2	,1] = o_ngc;
			text_[3	,1] = o_ngc;
			text_[4	,1] = o_ngc;
			text_[5	,1] = o_ngc;
			text_[6	,1] = o_ngc;
			text_[7	,1] = o_avelino;
			text_[8	,1] = o_ngc;
			text_[9	,1] = o_avelino;
			text_[10,1] = o_ngc;
			text_[11,1] = o_ngc;
			text_[12,1] = o_ngc;	
			text_[13,1] = o_ngc;			
			text_[14,1] = o_ngc;	
			text_[15,1] = o_ngc;
			text_[16,1] = o_ngc;
			text_[17,1] = o_ngc;
		
			text_[0	,0] = "Olá...";
			text_[1	,0] = "Não há tempo para apresentações.\nVou te explicar como é que as coisas funcionam aqui";
			text_[2	,0] = "Se clicares no [TAB] podes ver o mapa em grande.\n Aquele ponto verde sou eu :)\nSegue-me até à próxima sala...";
			text_[3	,0] = "";
			text_[4	,0] = "Se conseguiste chegar a esta sala, suponho que já saibas como andar,\nmas será que sabes te desviar?";
			text_[5	,0] = "Pressiona no botão [SHIFT] para te desviares";
			text_[6	,0] = "";
			text_[7	,0] = "Assim?";
			text_[8	,0] = "Sim... Porquê que pareces tão espantado?\nNão fazes mais do que a tua obrigação";
			text_[9	,0] = "Oh :(";
			text_[10,0] = "Vá não fiques triste, segue-me até à próxima sala para aprender a disparar";
			text_[11,0] = "";
			text_[12,0] = "Vais encontrar vários inimigos na tua jornada... para disparar neles pressiona\n o [BOTÃO ESQUERDO] do teu rato para destruir esse boneco\ne no [R] para recarregar as balas";	
			text_[13,0] = "";			
			text_[14,0] = "Ok acho que estás pronto, quando passares por aquela porta\n vão aparecer inimigos";	
			text_[15,0] = "Utiliza as ferramentas que te dei e derrota-os";
			text_[16,0] = "Se conseguires, abrirá-se um porta e podes seguir na tua jornada :)";
			text_[17,0] = "";
			break;
		case rm_level1:
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
			text_[0	,0] = "Olá, quem és tu?\nNunca te tinha visto pelo servidor";
			text_[1	,0] = "Sou o Azel Pear Tree";
			text_[2	,0] = "Ah, aquele que gere o servidor?\nO que fazes aqui dentro?";
			text_[3	,0] = "O meu colega JJ desligou o servidor\nE agora tenho de o encontrar";
			text_[4	,0] = "É...\nTem sido dificil operar as\nbases de dados do servidor desde que ele foi a baixo";
			text_[5	,0] = "Bases de dados?"	;
			text_[6	,0] = "Ah, não me apresentei, eu sou a Narnia THE GOAT Costa\nOu NGC.\nEu sou quem guarda tudo o que se passa por aqui";
			text_[7	,0] = "Essa arma que tu tens é meio rafeira...\nComprás-te a no chinês?";
			text_[8	,0] = "Assim, para além de gerir bases de dados eu também sou ótima em\n construir armas a partir de restos de guardiões";
			text_[9	,0] = "Não estou a entender onde queres chegar.\nE o que é um guardião";
			text_[10,0] = "Ah, esqueci-me que não costumas andar por cá,\nentão desde que o servidor foi abaixo que tem\num guardião no fim de cada camada";
			text_[11,0] = "Se os conseguires derrotar, eu posso te arranjar umas armas melhores";
			text_[12,0] = "Ok, fixe\nJá queria sair desta camada de qualquer maneira";	
			text_[13,0] = "Ok, então encontro-me contigo no fim da camada";			
			text_[14,0] = "";	
			text_[15,0] = "";
			break;
	}
	
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
				if (!audio_is_playing(a_ngc)) audio_play_sound(a_ngc, 1000, true);
				break;
			case o_avelino :
				with o_avelino {
					createText();
				}
				if (!audio_is_playing(a_azel)) audio_play_sound(a_azel, 1000, true);
				break;
		}
	} else {
		switch dialogue {
			case 3:
				x = 1272;
				y = 936;
				o_avelino.state = PLAYER.FREE;
				with (o_camera) follow = o_avelino;	
				talking = false;
				break;
			case 6:
				with o_avelino {
					if (state == PLAYER.DIALOGUE) {
						state = PLAYER.FREE;
						with (o_camera) follow = o_avelino;	
					}
					if state == PLAYER.DASH {
						if image_number - image_index < 2 && sprite_index == s_avelino_dash {
							other.dialogue ++;	
						}
					}
				}
				break;
			case 11:
				x = 1272;
				y = 568;
				o_avelino.state = PLAYER.FREE;
				with (o_camera) follow = o_avelino;	
				talking = false;
				break;
			case 13:
				with o_avelino {
					if (state == PLAYER.DIALOGUE) {
						state = PLAYER.FREE;
					}
				}
				if !instance_exists(o_dummy) {
					instance_create_depth(920,y,depth,o_dummy);	
				}
				break;
			default:
				o_avelino.state = PLAYER.FREE;
				with (o_camera) follow = o_avelino;	
				instance_destroy();
				break;
		}
	}
}