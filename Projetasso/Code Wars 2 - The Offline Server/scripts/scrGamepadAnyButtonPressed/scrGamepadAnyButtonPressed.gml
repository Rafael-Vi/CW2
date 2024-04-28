//Check if any face, dpad or shoulder button on a controller has been pressed
//Returns device id if true
//This allows to switch between different connected controllers on the fly
function scrGamepadAnyButtonPressed(){
	for (i = 0; i <= 11; i++)
	{
		if GamepadAnyKey(i,gamepad_button_check_pressed) {
			return i;
		}
	}
}

function GamepadAnyKey(slot,tipo_de_check){
	return (tipo_de_check(slot, gp_face1)||tipo_de_check(slot, gp_face2)||tipo_de_check(slot, gp_face3)||tipo_de_check(slot, gp_face4)||tipo_de_check(slot, gp_shoulderl)||tipo_de_check(slot, gp_shoulderr)||tipo_de_check(slot, gp_shoulderlb)||tipo_de_check(slot, gp_shoulderrb)||tipo_de_check(slot, gp_select)||tipo_de_check(slot, gp_start)||tipo_de_check(slot, gp_padd)||tipo_de_check(slot, gp_padl)||tipo_de_check(slot, gp_padr)||tipo_de_check(slot, gp_face4)||gamepad_axis_value(0,gp_axislh) < 0||gamepad_axis_value(0,gp_axislh) > 0||gamepad_axis_value(0,gp_axislv) < 0||gamepad_axis_value(0,gp_axislv) > 0)
}