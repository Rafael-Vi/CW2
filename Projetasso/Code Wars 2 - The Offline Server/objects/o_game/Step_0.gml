Inputs();

audio_group_set_gain(audiogroup_sounds,global.master_volume/10*(global.sounds_volume/10),0);
audio_group_set_gain(audiogroup_music,global.master_volume/10*(global.music_volume/10),0);
audio_group_set_gain(audiogroup_ui,global.master_volume/10*(global.interface_volume/10),0);
	
//Detect input device change
if room < rm_level1 && room >=3 {
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
} else {
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
		}
		else if scrGamepadAnyButtonPressed() > -1 
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
		if keyboard_check_pressed(vk_anykey) 
		{
			global.input = -2;
		}
		break;
	}
}