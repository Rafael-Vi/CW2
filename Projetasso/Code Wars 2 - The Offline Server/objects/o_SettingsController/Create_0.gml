//Start reading settings
ini_open("settings.ini");

//Load display settings
global.fullscreen = ini_read_real("Display","Fullscreen",1);
global.zoom = ini_read_real("Display","Zoom",0);

window_set_fullscreen(global.fullscreen);

//Load audio settings
global.master_volume = ini_read_real("Audio","Master",5);
global.sounds_volume = ini_read_real("Audio","Sounds",5);
global.music_volume = ini_read_real("Audio","Music",5);
global.interface_volume = ini_read_real("Audio","UI",5);

audio_group_set_gain(audiogroup_sounds,global.master_volume/10*(global.sounds_volume/10),0);
audio_group_set_gain(audiogroup_music,global.master_volume/10*(global.music_volume/10),0);
audio_group_set_gain(audiogroup_ui,global.master_volume/10*(global.interface_volume/10),0);

//Load interface settings
global.language = ini_read_real("Interface","Language",0);
global.ui_opacity = ini_read_real("Interface","Opacity",5);
global.text_size = ini_read_real("Interface","Text size",1);

//Done loading settings
ini_close();

//This defaults to mouse cursor but is overridden when any other input device is used
global.input = -1;