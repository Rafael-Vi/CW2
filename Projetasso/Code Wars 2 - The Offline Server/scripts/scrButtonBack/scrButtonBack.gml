// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrButtonBack(){
	switch room
	{
		case rmSettings: room_goto(rmMenu); break;
		case rmCredits: room_goto(rmMenu); break;
		default: room_goto(rmSettings); break;
	}
}