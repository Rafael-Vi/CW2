draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_self();
if (data == -1) draw_text(x+4.5*image_xscale,y,"Carregando...") else draw_text(x+4.5*image_xscale,y,"Criar");
drawReset();

switch (erro) {
	case 1:
	case 4:
		draw_sprite(s_aviso,0,o_textBox.x+o_textBox.sprite_width,o_textBox.y);
		break;
	case 2:
		draw_sprite(s_aviso,0,o_textPassBox.x+o_textPassBox.sprite_width,o_textPassBox.y);
		break;
	case 3:
		draw_sprite(s_aviso,0,o_textPassBoxConfirm.x+o_textPassBoxConfirm.sprite_width,o_textPassBoxConfirm.y);
		break;
}
