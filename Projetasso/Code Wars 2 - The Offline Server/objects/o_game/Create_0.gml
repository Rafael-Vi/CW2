global.playerInfo = [];
global.root = "utilizadores";
Inputs();
window_set_cursor(cr_none);
if (room == rm_boot) {
	room_goto(rm_menu_login);
	instance_create_depth(mouse_x,mouse_y,0,o_mira);
	instance_create_depth(x,y,0,o_SettingsController);
	instance_create_depth(x,y,0,o_MusicController);
	if !audio_group_is_loaded(audiogroup_sounds) audio_group_load(audiogroup_sounds);
	if !audio_group_is_loaded(audiogroup_music) audio_group_load(audiogroup_music);
	if !audio_group_is_loaded(audiogroup_ui) audio_group_load(audiogroup_ui);
	if audio_group_is_loaded(audiogroup_sounds) && audio_group_is_loaded(audiogroup_music) && audio_group_is_loaded(audiogroup_ui)
	{
		room_goto(rm_menu_login);	
	}
}