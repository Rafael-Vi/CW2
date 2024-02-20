if (place_meeting(x,y,o_mira) && mouse_check_button_pressed(mb_left)) || keyboard_check_pressed(vk_anykey) {
	instance_destroy();
	if (instance_exists(o_criar_conta)) o_criar_conta.erro = 0;
}
