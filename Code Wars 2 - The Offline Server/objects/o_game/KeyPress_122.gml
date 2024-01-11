checked_ = !checked_;
if (window_get_fullscreen() == false) window_set_fullscreen(true)
if (window_get_fullscreen() == true) window_set_fullscreen(false)
window_set_fullscreen(checked_);