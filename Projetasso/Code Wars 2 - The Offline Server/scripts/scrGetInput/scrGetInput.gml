// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGetInput(){
	switch global.input
	{
		case -2:
		input_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
		input_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
		input_right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
		input_left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
		input_interact = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);
		break;
		
		case -1:
		x = mouse_x;
		y = mouse_y;
		input_up = 0;
		input_down = 0;
		input_right = mouse_check_button_pressed(mb_right);
		input_left = mouse_check_button_pressed(mb_left);
		input_interact = mouse_check_button_pressed(mb_left);
		break;
		
		default:
		input_up = gamepad_button_check_pressed(global.input,gp_padu);
		input_down = gamepad_button_check_pressed(global.input,gp_padd);
		input_right = gamepad_button_check_pressed(global.input,gp_padr);
		input_left = gamepad_button_check_pressed(global.input,gp_padl);
		input_interact = gamepad_button_check_pressed(global.input,gp_face1);
		break;
	}
}