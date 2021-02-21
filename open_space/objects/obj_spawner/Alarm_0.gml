alarm[0] = room_speed
var side = irandom(3)
var start_x = 0
var start_y = 0
switch side {
	case 0:
		start_x = irandom_range(global.view_delta_w - 200, global.view_width + 200)
		start_y = global.view_delta_h - 200
		break
	case 1:
		start_x = global.view_width + 200
		start_y = irandom_range(global.view_delta_h - 200, global.view_height + 200)
		break
	case 2:
		start_x = irandom_range(global.view_delta_w - 200, global.view_width + 200)
		start_y = global.view_height + 200
		break
	case 3:
		start_x = global.view_delta_w - 200
		start_y = irandom_range(global.view_delta_h - 200, global.view_height + 200)
		break
}

instance_create_layer(start_x, start_y,"Instances", obj_enemy)