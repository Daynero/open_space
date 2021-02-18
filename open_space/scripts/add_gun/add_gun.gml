///@param obj
///@param [diffx]
///@param [diffy]

var gun = instance_create_depth(x,bbox_top,depth-1,asset_get_index("obj_gun_" + string(argument[0])))
if argument_count == 3 {
	var dx = argument[1]
	var dy = argument[2]
	with gun {
		diffx = (dx == "deff") ? diffx : dx
		diffy = (dy == "deff") ? diffy : dy
	}	
}
ds_list_add(setted_guns, gun)