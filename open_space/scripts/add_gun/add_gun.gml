///@param obj
///@param gun
///@param [diffx]
///@param [diffy]

var gun = instance_create_depth(x,bbox_top,depth-1,asset_get_index("obj_gun_" + string(argument[0])))
with gun {
	gun_set(type, argument[1])
	alarm[0] = attack_time
}
if argument_count == 4 {
	var dx = argument[2]
	var dy = argument[3]
	with gun {
		diffx = (dx == "deff") ? diffx : dx
		diffy = (dy == "deff") ? diffy : dy
		
	}	
	
}
ds_list_add(setted_guns, gun)