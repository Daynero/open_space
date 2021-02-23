alarm[0] = room_speed*3
var side = irandom(3)
var start_x = 0
var start_y = 0
var dist = 500 // Дистанция от края экрана
switch side {
	case 0:
		start_x = irandom_range(global.view_delta_w - dist, global.view_width + dist)
		start_y = global.view_delta_h - dist
		break
	case 1:
		start_x = global.view_width + dist
		start_y = irandom_range(global.view_delta_h - dist, global.view_height + dist)
		break
	case 2:
		start_x = irandom_range(global.view_delta_w - dist, global.view_width + dist)
		start_y = global.view_height + dist
		break
	case 3:
		start_x = global.view_delta_w - dist
		start_y = irandom_range(global.view_delta_h - dist, global.view_height + dist)
		break
}

instance_create_layer(start_x, start_y,"Instances", obj_space_debris)