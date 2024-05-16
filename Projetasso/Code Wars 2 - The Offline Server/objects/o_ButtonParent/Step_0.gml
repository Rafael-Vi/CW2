if place_meeting(x,y,o_mira) && o_mira.input_interact && o_mira.pressed == false 
{
	if room == rm_menu_definicoes {
		var _json = json_stringify
		( 
			{
				som_geral: o_SettingMasterVol.setting,
				som_musica: o_SettingMusicVol.setting,
				som_efeitos: o_SettingSoundVol.setting,
				som_ui: o_SettingUIVol.setting
			}
		);
		update(_json);
		global.playerInfo.som_geral = o_SettingMasterVol.setting;
		global.playerInfo.som_musica = o_SettingMusicVol.setting;
		global.playerInfo.som_efeitos = o_SettingSoundVol.setting;
		global.playerInfo.som_ui = o_SettingUIVol.setting;
	}
	o_mira.pressed = true;
	o_mira.alarm[0] = 10;
	room_goto(target);
}

//switch global.text_size
//{
//	case 0: font = font_menu_small; break;	
//	case 1: font = font_menu_medium; break;	
//	case 2: font = font_menu_large; break;	
//	default: font = font_menu_medium; break;
//}