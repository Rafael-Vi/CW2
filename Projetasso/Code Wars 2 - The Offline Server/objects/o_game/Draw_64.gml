var _padding = 20;
if instance_exists(o_avelino) && !instance_exists(o_texto) && o_avelino.state != PLAYER.DIALOGUE {	
	#region Vida e Arma
	var _spacing = 25;
	for (var i = 0; i < o_avelino.fullhp; i+=2) {
		if (i < o_avelino.hp && i != o_avelino.hp-1) {
			draw_sprite_ext(s_heart, 0, _padding + _spacing * i, _padding,2,2,0,c_white,1);	
		} else {
			if (i == o_avelino.hp-1) {
				draw_sprite_ext(s_heart, 1, _padding + _spacing * i, _padding,2,2,0,c_white,1);
			} else {
				draw_sprite_ext(s_heart, 2, _padding + _spacing * i, _padding,2,2,0,c_white,1);
			}
		}
	}
	if instance_exists(o_arma) {
		var _bullet_sprite = asset_get_index(sprite_get_name(o_arma.sprite_index) + "_bala")
		draw_sprite_ext(asset_get_index(sprite_get_name(o_arma.sprite_index) + "_hud"),o_arma.image_index,display_get_gui_width()-_padding-sprite_get_width(_bullet_sprite),display_get_gui_height()-_padding,5,5,0,c_white,1);
		for(var i = 0; i < o_arma.bullet; i++) {
			draw_sprite(_bullet_sprite,0,display_get_gui_width()-_padding-sprite_get_width(_bullet_sprite),display_get_gui_height()-_padding - sprite_get_height(_bullet_sprite) * 1.5 * i);
		}
	}
#endregion
	#region Vida do boss
	if instance_exists(o_boss) {
		if o_boss.ativo = 1 && o_boss.hp > 0{
			var _y = display_get_gui_height()-40;
			var _boss_padding = 200;
			draw_set_halign(fa_left);
			draw_text(_boss_padding,_y-20,o_boss.name);
			var _col1 = make_color_rgb(76,5,7);
			var _col2 = c_red;
			var _width = display_get_gui_width()-_boss_padding*2;
			draw_rectangle_color(_boss_padding - 1, _y-1, _boss_padding + _width +1		, _y+11, c_black, c_black, c_black, c_black, false);
			draw_rectangle_color(_boss_padding, _y, _boss_padding + _width				, _y+10, _col1,   _col1,   _col1,   _col1,   false);
			draw_rectangle_color(_boss_padding, _y, _boss_padding + _width*(o_boss.hp/o_boss.full_hp)	, _y+10, _col2,   _col2,   _col2,   _col2,   false);
			if (isAdmin()) draw_text(display_get_gui_width()/2,_y,o_boss.hp);
		}
	}
#endregion
	#region Minimapa
	if room >= rm_level0 {
		var _width = 100;
		if global.key_minimap {
			_width = display_get_gui_height()/1.5;	
		}
		var _scale = _width / minimap_side;
		var _divider =  room_side / minimap_side;
		var _minimap_sprite = asset_get_index("s_minimapa" + string(int64(room) - int64(rm_level0)));
		var _minimap_x = minimap_side/2-sprite_get_width(_minimap_sprite)/2;
		var _minimap_y = minimap_side/2-sprite_get_height(_minimap_sprite)/2;
		if !surface_exists(minimap_surface) {
			if sprite_get_height(_minimap_sprite) > sprite_get_width(_minimap_sprite) {
				minimap_side = sprite_get_height(_minimap_sprite);	
				room_side = room_height;
			} else {
				minimap_side = sprite_get_width(_minimap_sprite);	
				room_side = room_width;
			}
			minimap_surface = surface_create(minimap_side, minimap_side);
		}
		surface_set_target(minimap_surface);
		draw_clear(c_black);
		draw_sprite(_minimap_sprite, 0, _minimap_x, _minimap_y);
		//Personagem
		draw_circle(o_avelino.x / _divider + _minimap_x, (o_avelino.y - sprite_get_height(s_avelino)/2) / _divider + _minimap_y,3,false);
		//NGC
		if instance_exists(o_ngc) {
			draw_circle_color(o_ngc.x / _divider + _minimap_x, (o_ngc.y - sprite_get_height(s_ngc)/2) / _divider + _minimap_y, 3, c_green, c_green, false);	
		}
		//Inimigos
		if instance_exists(o_enemy_parent) {
			for (var i = 0; i < instance_number(o_enemy_parent); i++) {
				var _enemy = instance_find(o_enemy_parent, i);
				if _enemy.object_index != o_balaIni {
					if object_get_parent(_enemy.object_index) == o_boss {
						if (_enemy.ativo) draw_circle_color(_enemy.x / _divider + _minimap_x, (_enemy.y - sprite_get_height(s_ngc)/2) / _divider + _minimap_y, 5, c_red, c_red, false);
					} else {
						draw_circle_color(_enemy.x / _divider + _minimap_x, (_enemy.y - sprite_get_height(s_ngc)/2) / _divider + _minimap_y, 3, c_red, c_red, false);
					}	
				}
			}
		}
		//Salas por explorar
		if instance_exists(o_enemy_checker) {
			for (var i = 0; i < instance_number(o_enemy_checker); i++) {
				var _enemy = instance_find(o_enemy_checker, i);
				with _enemy {
					if !place_meeting(x,y,o_avelino) {
						if _enemy.boss {
							draw_sprite(s_minimapa_boss,0,_enemy.x / _divider + _minimap_x,_enemy.y / _divider + _minimap_y);
						} else {
							draw_sprite(s_minimapa_desconhecido,0,_enemy.x / _divider + _minimap_x,_enemy.y / _divider + _minimap_y);
						}
					}
				}
			}	
		}
		surface_reset_target();
			
		var _moldura_side = sprite_get_width(s_minimapa_moldura);
		var _moldura_scale = (_moldura_side + _width) / _moldura_side;
		if global.key_minimap {
			draw_sprite_ext(s_minimapa_moldura,0,display_get_gui_width()/2 - _width / 2 - _moldura_side/2,display_get_gui_height()/2 - _width / 2 - _moldura_side/2,_moldura_scale, _moldura_scale,0,c_white,0.75);
			draw_surface_ext(minimap_surface, display_get_gui_width()/2 - _width / 2, display_get_gui_height()/2 - _width / 2, _scale, _scale, 0, c_white, 0.75);	
		} else {
			draw_sprite_ext(s_minimapa_moldura,0,display_get_gui_width() - _width - _padding - 6,_padding - 6,_moldura_scale, _moldura_scale,0,c_white,1);
			draw_surface_ext(minimap_surface, display_get_gui_width() - _width - _padding, _padding, _scale, _scale, 0, c_white, 1);	
		}
	}
	#endregion
}
drawReset();