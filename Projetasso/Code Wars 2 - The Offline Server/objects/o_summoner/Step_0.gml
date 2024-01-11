image_xscale = sign(o_avelino.x-x);

if place_meeting(x, y + vsp,o_wall) {
	while(!place_meeting(x, y + sign(vsp), o_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}	

y += vsp;
	
if place_meeting(x + hsp,y,o_wall) {
	while(!place_meeting(x + sign(hsp), y, o_wall)) {
		x = x + sign(hsp);
	}	
	hsp = 0;
}	

x += hsp;

hsp = 0;
vsp = 0;

if hp <= 0 {
	instance_destroy();
}

if abilitycd <= 0 {
	abilitycd = 7*60;
	var spawnDistance = 10;
	instance_create_depth(x - spawnDistance * 2,y,depth,o_minion);
	instance_create_depth(x + spawnDistance * 2,y,depth,o_minion);
	instance_create_depth(x - spawnDistance,y + spawnDistance,depth,o_minion);
	instance_create_depth(x - spawnDistance,y - spawnDistance,depth,o_minion);
	instance_create_depth(x + spawnDistance,y - spawnDistance,depth,o_minion);
	instance_create_depth(x + spawnDistance,y + spawnDistance,depth,o_minion);
} else {
	abilitycd--;
}