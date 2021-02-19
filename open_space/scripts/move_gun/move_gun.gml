for (var i = 0; i < ds_list_size(setted_guns); ++i) {
    with setted_guns[|i] {
		image_angle = other.rotation
		len = point_distance(other.x,other.y, other.x+diffx, other.y+diffy)
		x = other.x + lengthdir_x(len, image_angle + point_direction(other.x,other.y,other.x+diffx,other.y+diffy));
		y = other.y + lengthdir_y(len, image_angle + point_direction(other.x,other.y,other.x+diffx,other.y+diffy));
		
		//x = other.x + diffx
		//y = other.y + diffy
		
		
	}
}