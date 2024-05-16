inputs();
if instance_exists(o_profundidade) {
	with o_profundidade {
		if object_index != o_wall {
			depth = room_height - y + 200;
		}
	}		
}

if room >= rm_main_menu {
	audio_group_set_gain(audiogroup_sounds,global.playerInfo.som_geral/10*(global.playerInfo.som_efeitos/10),0);
	audio_group_set_gain(audiogroup_music,global.playerInfo.som_geral/10*(global.playerInfo.som_musica/10),0);
	audio_group_set_gain(audiogroup_ui,global.playerInfo.som_geral/10*(global.playerInfo.som_ui/10),0);
}
	
//Detect input device change
if room >=3 {
	if room < rm_level1 {
		switch global.input
		{
			//Mouse active
			case -1:
			o_mira.visible = true;
			if scrGamepadAnyButtonPressed() > -1 
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
			break;
		}
	} else {
		switch global.input
		{
			//Mouse active
			case -1:
			o_mira.visible = true;
			if scrGamepadAnyButtonPressed() > -1 
			{
				global.input = i;
			}
			break;
			
			//Gamepad active
			default:
			o_mira.visible = false;
			if mouse_check_button_pressed(mb_any) 
			{
				global.input = -1;
			}
			break;
		}
	}
}

if layer_exists("Wall") {
	layer_set_visible(layer_get_id("Wall"),false);
}