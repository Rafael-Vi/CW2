if instance_exists(o_avelino) {
	x = mouse_x;
	y = mouse_y;
	if (global.key_attack) {
		image_angle += 8;
		image_speed = 0;
		image_index = 0;
	} else {
		if image_angle > 0 {
			if image_angle > 0.1 {
				image_angle -= image_angle/8;
			} else {
				image_angle = 0;
				image_speed = 1;
			}
		} else {
			image_angle = 0;
			image_speed = 1;
		}
	}
} else {
	if mouse_check_button(mb_left) {
		image_index = 1;
	} else {
		image_index = 0;
	}
	scrGetInput();

	switch room {
		case rm_menu_definicoes:
			var _yplus = 50; 
			break;
		default:
			var _yplus = 22; 
			break;
	}
	if input_up y -= _yplus;
	if input_down y += _yplus;
	
	//Play UI sounds
	if instance_exists(o_ButtonParent) {
		if !place_meeting(xprevious,yprevious,o_ButtonParent) && place_meeting(x,y,o_ButtonParent)
		{
			audio_play_sound(sndFocusChange,0,0);	
		}
		
		//Play UI sounds
		if !place_meeting(xprevious,yprevious,o_SettingParent) && place_meeting(x,y,o_SettingParent)
		{
			audio_play_sound(sndFocusChange,0,0);	
		}
	}
}
