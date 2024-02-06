draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font);
draw_text(x,y,title);
draw_line(x-(string_width(title)/2),y+(string_height(title)/3),x+string_width(title)/2,y+(string_height(title)/3));
