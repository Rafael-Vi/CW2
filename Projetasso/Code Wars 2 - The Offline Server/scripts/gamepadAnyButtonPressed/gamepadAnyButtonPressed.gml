// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gamepadAnyButtonPressed(){
	for (i = 0; i <= 11; i++)
	{
		if gamepad_button_check_pressed(i,gp_face1) || gamepad_button_check_pressed(i,gp_face2) || 
		gamepad_button_check_pressed(i,gp_face3) || gamepad_button_check_pressed(i,gp_face4) ||
		gamepad_button_check_pressed(i,gp_padl) || gamepad_button_check_pressed(i,gp_padu) ||
		gamepad_button_check_pressed(i,gp_padr) || gamepad_button_check_pressed(i,gp_padd) || 
		gamepad_button_check_pressed(i,gp_shoulderl) || gamepad_button_check_pressed(i,gp_shoulderr) ||
		gamepad_button_check_pressed(i,gp_shoulderlb) || gamepad_button_check_pressed(i,gp_shoulderrb) ||
		abs(gamepad_axis_value(i,gp_axislh)>0.09) || abs(gamepad_axis_value(i,gp_axislv)>0.09)
		return i;
	}
}