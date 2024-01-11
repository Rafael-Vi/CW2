if spawns > 1 {
	for (var i = 0; i < 3; i++;)
	{
		with instance_create_depth(random_range(x-5,x+5),random_range(y-5,y+5),depth,o_slime) {
			spawns = other.spawns - 1;
		}
	}
}
