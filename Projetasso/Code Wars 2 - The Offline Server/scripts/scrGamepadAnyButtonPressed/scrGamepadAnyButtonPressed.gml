//Check if any face, dpad or shoulder button on a controller has been pressed
//Returns device id if true
//This allows to switch between different connected controllers on the fly
function scrGamepadAnyButtonPressed(){
	for (i = 0; i <= 11; i++)
	{
		if gamepad_button_check_pressed(i,gp_face1) or gamepad_button_check_pressed(i,gp_face2) or 
		gamepad_button_check_pressed(i,gp_face3) or gamepad_button_check_pressed(i,gp_face4) or
		gamepad_button_check_pressed(i,gp_padl) or gamepad_button_check_pressed(i,gp_padu) or
		gamepad_button_check_pressed(i,gp_padr) or gamepad_button_check_pressed(i,gp_padd) or 
		gamepad_button_check_pressed(i,gp_shoulderl) or gamepad_button_check_pressed(i,gp_shoulderr) or
		gamepad_button_check_pressed(i,gp_shoulderlb) or gamepad_button_check_pressed(i,gp_shoulderrb)
		return i;
	}
}