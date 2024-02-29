draw_set_valign(fa_middle);
var selCol = c_white;
var notSelcol = c_gray;
if selected {
	draw_self();
	if mouse_check_button(mb_left) && place_meeting(x,y,o_mira){
		draw_text_color(x+8,y,text,selCol,selCol,selCol,selCol,1);
	} else {
		draw_text_color(x+8,y,hide_text,selCol,selCol,selCol,selCol,1);
	}
} else {
	draw_sprite_ext(s_textBox,0,x,y,image_xscale,image_yscale,0,c_gray,1);
	if (text == "") {
		draw_text_color(x+8,y,text_ini,notSelcol,notSelcol,notSelcol,notSelcol,1);
	} else { 
		draw_text_color(x+8,y,hide_text,notSelcol,notSelcol,notSelcol,notSelcol,1); 
	}
}
draw_set_halign(fa_right);
draw_text(x-5,y,"Palavra-passe:");
drawReset();