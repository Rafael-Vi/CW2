event_inherited();
walkspd = 4;
hsp = 0;
vsp = 0;
fullhp = 6;
hp = fullhp;
ivccd = 0;
deathcd = 120;
angle = 0;
state = PLAYER.FREE;
enum PLAYER {
	FREE,
	DASH,
	DIALOGUE
}
instance_create_depth(x,y-14,depth-1,o_arma);
instance_create_depth(x,y,1,o_camera);
