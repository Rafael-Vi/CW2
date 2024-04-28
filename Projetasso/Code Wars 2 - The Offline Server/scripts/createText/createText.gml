// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function createText(obj = id){
	if point_in_circle(obj.x,obj.y,x,y,32) && !instance_exists(o_texto){
		with (instance_create_layer(x,y,"text",o_texto)){
			sprite_face = other.sprite_face;
			text = other.text;
			font = f_default;
			length = string_length(text);
			other.showing_text = true;
			state = TEXT.DIALOGUE;
		}	
		with (o_camera){
			follow = obj.id;
		}	
	}	
}