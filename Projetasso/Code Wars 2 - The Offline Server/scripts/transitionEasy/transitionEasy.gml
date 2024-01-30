// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function TransitionStartGui(room_target){
	with instance_create_depth(x,y,1,o_transition) {
		alpha = 0;
		target = room_target;
		state = TRANSITION.StartFade;
	}	
}

function TransitionEndGui(){
	with instance_create_depth(x,y,1,o_transition) {
		alpha = 1;
		state = TRANSITION.EndFade;
	}	
}