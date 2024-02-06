//Localization script based on Shaun Spalding's tutorial
//Watch https://www.youtube.com/watch?v=5OR9fVYpH9Y for details
function scrGetString(argument0){
	
	switch global.language
	{
		case 0: var lang = "English"; break;
		case 1: var lang = "German"; break;
		case 2: var lang = "Russian"; break;
		case 3: var lang = "Polish"; break;
		default: var lang = "English"; break;
	}
	
	ini_open("localization.ini");
	var findstr = ini_read_string(lang,string(argument0),"No string found!");
	ini_close();
	
	findstr = string_replace_all(findstr,"*","#");
	return findstr;
}