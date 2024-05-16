if room >= rm_level0 {
	TransitionEndGui();
	var _room = int64(room);
	var _json = json_stringify({ sala: _room});
	update(_json);
	global.playerInfo.sala = room;
	
	instance_create_depth(x,y,1,o_chamber);
	
	if room >= rm_level0 {
		if surface_exists(minimap_surface) {
			surface_free(minimap_surface);
			var _minimap_sprite = asset_get_index("s_minimapa" + string(int64(room) - int64(rm_level0)));
			if sprite_get_height(_minimap_sprite) > sprite_get_width(_minimap_sprite) {
				minimap_side = sprite_get_height(_minimap_sprite);	
				room_side = room_height;
			} else {
				minimap_side = sprite_get_width(_minimap_sprite);	
				room_side = room_width;
			}
			minimap_surface = surface_create(minimap_side, minimap_side);
		}
	}
}