switch room
{
	case rmDisplaySettings:
	//Open settings
	ini_open("settings.ini");

	//Save display settings
	ini_write_real("Display","Fullscreen",global.fullscreen);
	ini_write_real("Display","Zoom",global.zoom);
	
	global.fullscreen = o_SettingFullscreen.setting;
	window_set_fullscreen(global.fullscreen);

	//Done saving settings
	ini_close();
	break;
	
	case rmAudioSettings:
	//Open settings
	ini_open("settings.ini");

	//Save audio settings
	global.master_volume = o_SettingMasterVol.setting;
	global.sounds_volume = o_SettingSoundVol.setting;
	global.music_volume = o_SettingMusicVol.setting;
	global.interface_volume = o_SettingUIVol.setting;

	audio_group_set_gain(audiogroup_sounds,global.master_volume/10*(global.sounds_volume/10),0);
	audio_group_set_gain(audiogroup_music,global.master_volume/10*(global.music_volume/10),0);
	audio_group_set_gain(audiogroup_ui,global.master_volume/10*(global.interface_volume/10),0);
	
	ini_write_real("Audio","Master",global.master_volume);
	ini_write_real("Audio","Sounds",global.sounds_volume);
	ini_write_real("Audio","Music",global.music_volume);
	ini_write_real("Audio","UI",global.interface_volume);
	
	//Done saving audio settings
	ini_close();
	break;
	
	case rmInterfaceSettings:
	//Open settings
	ini_open("settings.ini");
	
	//Save interface settings
	global.language = o_SettingLanguage.setting;
	global.ui_opacity = o_SettingOpacity.setting;
	global.text_size = o_SettingTextSize.setting;
	
	ini_write_real("Interface","Language",global.language);
	ini_write_real("Interface","Opacity",global.ui_opacity);
	ini_write_real("Interface","Text size",global.text_size);

	//Done saving interface settings
	ini_close();
	break;
}

//Detect input device change
if room <= 12 && room >=3 {
	switch global.input
	{
		//Keyboard active
		case -2:
		o_mira.visible = false;
		if mouse_check_button_pressed(mb_any) global.input = -1;
		else if scrGamepadAnyButtonPressed() > -1 global.input = i;
		break;
		
		//Mouse active
		case -1:
		o_mira.visible = true;
		if keyboard_check_pressed(vk_anykey) 
		{
			global.input = -2;
			o_mira.x = instance_nearest(x,y,o_ButtonParent).x;
			o_mira.y = instance_nearest(x,y,o_ButtonParent).y;
		}
		else if scrGamepadAnyButtonPressed() > -1 
		{
			global.input = i;
			o_mira.x = instance_nearest(x,y,o_ButtonParent).x;
			o_mira.y = instance_nearest(x,y,o_ButtonParent).y;
		}
		break;
		
		//Gamepad active
		default:
		o_mira.visible = false;
		if mouse_check_button_pressed(mb_any) 
		{
			global.input = -1;
			o_mira.x = instance_nearest(x,y,o_ButtonParent).x;
			o_mira.y = instance_nearest(x,y,o_ButtonParent).y;
		}
		if keyboard_check_pressed(vk_anykey) 
		{
			global.input = -2;
			o_mira.x = instance_nearest(x,y,o_ButtonParent).x;
			o_mira.y = instance_nearest(x,y,o_ButtonParent).y;
		}
		break;
	}
}