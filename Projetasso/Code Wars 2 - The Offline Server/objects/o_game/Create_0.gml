global.playerInfo = [];
global.root = "utilizadores";
global.input = -1;
global.offline = false;

minimap_side = sprite_get_width(s_minimapa1);
room_side = room_width;
minimap_surface = surface_create(minimap_side, minimap_side);

gamepad_set_axis_deadzone(0,0.09);

inputs();
window_set_cursor(cr_none);
if (room == rm_boot) {
	room_goto(rm_menu_login);	
	instance_create_depth(mouse_x,mouse_y,0,o_mira);
	if !audio_group_is_loaded(audiogroup_sounds) audio_group_load(audiogroup_sounds);
	if !audio_group_is_loaded(audiogroup_music) audio_group_load(audiogroup_music);
	if !audio_group_is_loaded(audiogroup_ui) audio_group_load(audiogroup_ui);
	if audio_group_is_loaded(audiogroup_sounds) && audio_group_is_loaded(audiogroup_music) && audio_group_is_loaded(audiogroup_ui)
	{
		room_goto(rm_menu_login);	
	}
}