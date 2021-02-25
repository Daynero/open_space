#region State Machine
switch global_move_state {
	#region player_manual_tap
	case move.player_manual_tap:		
		switch locale_state {
			#region finger_down
			case locale_move.finger_down:
									
				var dist = point_distance(x, y, pos_x, pos_y)
						
				if (dist <= manual_speed) {
					move_towards_point(pos_x, pos_y, dist)
				} else	if (dist > manual_speed) {
					move_towards_point(pos_x, pos_y, manual_speed)	
				} else speed = 0
						
			break
			#endregion
		}
		break
	#endregion
	#region player_manual_drag
	case move.player_manual_drag:
		switch locale_state {
			#region finger_down
			case locale_move.finger_down:
									
				var target_x = pos_x + diff_x
				var target_y = pos_y + diff_y
				var dist = point_distance(x, y, target_x, target_y)
						
				if (dist <= manual_speed) {
					move_towards_point(target_x, target_y, dist)
				} else	if (dist > manual_speed) {
					move_towards_point(target_x, target_y, manual_speed)	
				} else speed = 0
						
			break
			#endregion
		}
		break
	#endregion	
	#region enemy_space_debris
	case move.enemy_space_debris:
		switch locale_state {
			#region start
			case locale_move.start:
				// Симетричное разделение пополам экрана
				//var target_x = (x <= global.view_width / 2) ? (global.view_width - x) : (global.view_delta_w + (global.view_width - x))
				//var target_y = (y <= global.view_height / 2) ? (global.view_delta_h + (global.view_height - y)) : (global.view_height - y)
				//move_towards_point(target_x, target_y, irandom_range(min_enemy_speed, max_enemy_speed))
				
				if instance_exists(obj_player) {
					with (obj_player) {
						var target_x = x
						var target_y = y
					}
					test_speed = 5//irandom_range(min_enemy_speed, max_enemy_speed)
					move_towards_point(target_x, target_y, test_speed)
			
					locale_state = locale_move.warning	
				}
			break
			#endregion
			#region warning
			case locale_move.warning:
			image_angle += change_angle
			
			break
			#endregion
		}		
		break
	#endregion	
}
#endregion