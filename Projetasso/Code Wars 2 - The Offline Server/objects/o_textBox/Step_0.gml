if selected {
	if (keyboard_check(vk_anykey) && string_length(text)<20) {
		text += string(keyboard_string);
		keyboard_string = "";
	}
	
	if(keyboard_check(vk_backspace) && !keyboard_check_pressed(vk_backspace) && delete_timer = 2) {
		text = string_delete(text,string_length(text),1);
		delete_timer = 0;
		keyboard_string = "";
	}
	
	if (keyboard_check_pressed(vk_backspace)) {
		text = string_delete(text,string_length(text),1);
		keyboard_string = "";
		delete_timer = -12;
	}
	
	if (delete_timer < 2) {
		delete_timer ++;
	}
	
	
} else {
	if place_meeting(x,y,o_mira) && mouse_check_button_pressed(mb_left) {
		o_textBoxP.selected = false;
		selected = true;
		keyboard_string = "";
	}
}