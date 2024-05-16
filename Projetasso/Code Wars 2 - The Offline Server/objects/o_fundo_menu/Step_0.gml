if isAdmin() {
	if (keyboard_check_pressed(vk_numpad0)) room_goto(rm_level0);
	if (keyboard_check_pressed(vk_numpad1)) room_goto(rm_level1);
	if (keyboard_check_pressed(vk_numpad2)) room_goto(rm_level2);
}