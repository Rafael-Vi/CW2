// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function collisionBase(_id = o_wall){
	if place_meeting(x, y + vsp,_id) {
		while(!place_meeting(x, y + sign(vsp), _id)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}	
		
	if place_meeting(x + hsp,y,_id) {
		while(!place_meeting(x + sign(hsp), y, _id)) {
			x = x + sign(hsp);
		}	
		hsp = 0;
	}	
}
function collision(){
	collisionBase();
	if !instance_nearest(x,y,o_porta).open {
		collisionBase(o_porta);
	}
	y += vsp;
	x += hsp;
}