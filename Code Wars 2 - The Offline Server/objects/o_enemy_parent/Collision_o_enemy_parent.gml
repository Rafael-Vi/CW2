if point_in_rectangle(x, y, 0, 0, room_width, room_height) {
	if x == other.x && y == other.y {
		x += sign(other.id - id);
	}	
	var dir = point_direction(other.x, other.y, x, y);
	hsp += lengthdir_x(.25, dir)
	vsp += lengthdir_y(.25, dir)
}
