x = o_avelino.x + o_avelino.hsp;
y = o_avelino.y + o_avelino.vsp - 7;
image_xscale = o_avelino.image_xscale;
image_angle = point_direction(x,y,mouse_x,mouse_y)+180*(abs(sign(image_xscale-abs(image_xscale))));