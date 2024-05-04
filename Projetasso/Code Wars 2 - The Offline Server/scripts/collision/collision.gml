// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function collisionBase(_id = o_wall){
	if place_meeting(x, y + vsp,_id) {
		while(!place_meeting(x, y + sign(vsp), _id)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}	
		
	if place_meeting(x + hsp,y,_id) {
		while(!place_meeting(x + sign(hsp), y, _id)) {
			x = x + sign(hsp);
		}	
		hsp = 0;
	}	
}
function Unstuck(vspd = vsp,objeto_a_colidir = o_wall){
	if (place_meeting(x,y, objeto_a_colidir))
	  {
	  var unclipYPlus = 0
	  var unclipXPlus = 0
	  var unclipYMinus = 0
	  var unclipXMinus = 0

	  while (place_meeting(x,y + unclipYPlus, objeto_a_colidir))
	  {
	    unclipYPlus ++;
	  }
	  while (place_meeting(x + unclipXPlus,y, objeto_a_colidir))
	  {
	    unclipXPlus ++;
	  }
	  while (place_meeting(x,y - unclipYMinus, objeto_a_colidir))
	  {
	    unclipYMinus ++;
	  }
	  while (place_meeting(x - unclipXMinus,y, objeto_a_colidir))
	  {
	    unclipXMinus ++;
	  }

	  if (unclipYPlus < unclipYMinus && unclipYPlus < unclipXPlus && unclipYPlus < unclipXMinus)
	  {
	    y += unclipYPlus + 2
	    vspd = 0
	  }
	  else if (unclipXPlus < unclipYMinus && unclipYPlus > unclipXPlus && unclipXPlus < unclipXMinus)
	  {
	    x += unclipXPlus + 2
	  }
	  else if (unclipXPlus > unclipYMinus && unclipYMinus < unclipXPlus && unclipYMinus < unclipXMinus)
	  {
	    y -= unclipYMinus + 2
	    vspd = 0
	  }
	  else if (unclipXMinus < unclipYMinus && unclipXMinus < unclipXPlus && unclipYMinus > unclipXMinus)
	  {
	    x -= unclipXMinus + 2
	  }
	}
}
function collision(){
	collisionBase();
	Unstuck();
	if instance_nearest(x,y,o_porta).image_index < instance_nearest(x,y,o_porta).image_number-1 {
		collisionBase(instance_nearest(x,y,o_porta));
	}
	y += vsp;
	x += hsp;
}