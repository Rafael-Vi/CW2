if (IntervalIsOff(ivccd, 20)) gpu_set_fog(false, c_white, 0, 1);
else if (hp > 0) gpu_set_fog(true, c_white, 0, 1);
draw_self();
gpu_set_fog(false, c_white, 0, 1);
