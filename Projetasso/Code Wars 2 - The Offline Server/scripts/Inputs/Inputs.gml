// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Inputs(){
	global.key_left = keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0 || gamepad_button_check(0,gp_padl));
	global.key_right = keyboard_check(ord("D")) || keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0 || gamepad_button_check(0,gp_padr));
	global.key_left_rAxis = (gamepad_axis_value(0,gp_axisrh) < 0);
	global.key_right_rAxis = (gamepad_axis_value(0,gp_axisrh) > 0);
	global.key_down_rAxis = (gamepad_axis_value(0,gp_axisrv) < 0);
	global.key_up_rAxis = (gamepad_axis_value(0,gp_axisrv) > 0);
	
	global.key_side = keyboard_check(ord("D")) || keyboard_check(ord("A")) || keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0 || gamepad_button_check(0,gp_padr)) || keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0 || gamepad_button_check(0,gp_padl));
	global.key_sides_released = keyboard_check_released(ord("D")) || keyboard_check_released(ord("A")) || (keyboard_check_released(vk_right) || keyboard_check_released(vk_left)) || (gamepad_button_check_released(0,gp_padr) || gamepad_button_check_released(0,gp_padl));
	global.key_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axislv) < 0);
	global.key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axislv) > 0 || gamepad_button_check(0,gp_padd));
	global.key_down_released = keyboard_check_released(ord("S")) || keyboard_check_released(vk_down) || gamepad_button_check_released(0,gp_padd);
	global.key_jump	= keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_face1);
	global.key_airjump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_face1);
	global.key_attack = mouse_check_button(mb_left) || keyboard_check(ord("L")) || keyboard_check(ord("Z")) || gamepad_button_check(0,gp_face2);
	global.key_long_attack = mouse_check_button_pressed(mb_right) || keyboard_check_pressed(ord("K")) || keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0,gp_face3);
	
	global.key_up_menu = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_padu);
	global.key_left_menu = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0,gp_padl);
	global.key_right_menu = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0,gp_padr);
	global.key_down_menu = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0,gp_padd);
	
	//if (!instance_exists(o_pakko) || instance_exists(o_pause_menu) || o_pakko.state = PLAYERSTATE.DIALOGUE){ global.key_action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_face1) || keyboard_check_pressed(vk_space);
	//} else {global.key_action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0,gp_face4) || keyboard_check_pressed(vk_space);}
	//global.key_skip = keyboard_check_released(ord("C")) || gamepad_button_check_released(0,gp_face4) || keyboard_check_released(vk_space) || gamepad_button_check_released(0,gp_face1);
}