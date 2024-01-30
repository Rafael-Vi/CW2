global.playerInfo = [];
global.root = "utilizadores";
Inputs();
window_set_cursor(cr_none);
instance_create_depth(mouse_x,mouse_y,0,o_mira);
if (room == rm_boot) room_goto(rm_menu_login);