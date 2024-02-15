if place_meeting(x,y,o_mira) && o_mira.input_interact && o_mira.pressed == false 
{
	o_mira.pressed = true;
	o_mira.alarm[0] = 10;
	game_end();
}

