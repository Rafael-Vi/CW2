// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function inputs() {
	global.key_left = keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0 || gamepad_button_check(0,gp_padl));
	global.key_right = keyboard_check(ord("D")) || keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0 || gamepad_button_check(0,gp_padr));
	global.key_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axislv) < 0);
	global.key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axislv) > 0 || gamepad_button_check(0,gp_padd));
	
	global.key_attack = mouse_check_button(mb_left) || keyboard_check(ord("L")) || keyboard_check(ord("Z")) || gamepad_button_check(0,gp_shoulderr);
	global.key_reload = keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0,gp_stickl);
	global.key_dodge = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_shoulderl);
	global.key_action = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0,gp_face4);
	
	global.key_minimap = keyboard_check(vk_tab) || gamepad_button_check(0,gp_shoulderlb);
}