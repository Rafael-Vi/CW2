var x2 = 0;
var y2 = 0;
var faceScale = 2;
if (sprite_face == s_avelino_chat) {
	var faceX = x2 + 15;
	var textX = x2 + 20 + sprite_get_width(sprite_face) * faceScale;
	drawSetText(c_white, font, fa_left, fa_top);
} else {
	var faceX = x2 + display_get_gui_width() - 15;	
	var textX = x2 + display_get_gui_width() - 20 - sprite_get_width(sprite_face) * faceScale;
	drawSetText(c_white, font, fa_right, fa_top);
}
var faceY = y2 + 15;
var textY = y2 + 15;

draw_sprite_ext(s_dialogue_border,0, x2, y2, 1, 3, 0, c_white, 1);
if letters < length {
	draw_sprite_ext(sprite_face,creator.image_index, faceX, faceY, faceScale, faceScale, 0, c_white, 1);
} else {
	draw_sprite_ext(sprite_face,0, faceX, faceY, faceScale, faceScale, 0, c_white, 1);
}

draw_text(textX,textY,text_current);