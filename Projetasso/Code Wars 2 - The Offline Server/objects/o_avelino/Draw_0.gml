if (intervalIsOff(ivccd, 20)) gpu_set_fog(false, c_white, 0, 1);
else if (hp > 0) gpu_set_fog(true, c_white, 0, 1);
gpu_set_fog(false, c_white, 0, 1);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,sin(angle/15)*10,c_white,1);