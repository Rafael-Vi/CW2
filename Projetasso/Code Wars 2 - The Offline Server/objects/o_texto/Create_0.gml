spd = 0.25;
font = f_default;
letters = 0;
text = "default";
length = string_length(text);
text_current = "";
w = 0;
he = 0;
state = TEXT.SIGN;
sprite_face = s_avelino_chat;
creator = self;

enum TEXT {
	SIGN,
	DIALOGUE
}	
