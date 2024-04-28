var _spd = spd;

var _char = string_char_at(text, letters);

if (_char == "." || _char == "," || _char == "!" || _char == "?" || _char == ";" || _char == ":") _spd /= 6;

letters += _spd;
text_current = string_copy(text,1,floor(letters));

if (he == 0) he = string_height(text);
w = string_width(text_current);



switch (state) {
	case TEXT.DIALOGUE :	if letters >= length - 1 {
								//if (audio_is_playing(a_big_rosca)) audio_stop_sound(a_big_rosca);
								//if (audio_is_playing(a_sapo_fala)) audio_stop_sound(a_sapo_fala);
							}
							if (global.key_action) {
								if letters < length {
									letters = length;
								} else {
									instance_destroy();
									o_text_parent.showing_text = false;
									with (o_camera) follow = o_avelino;															
									if (o_ngc.dialogue >= 0) o_ngc.dialogue ++;
								
							}	break;
						}	
}
