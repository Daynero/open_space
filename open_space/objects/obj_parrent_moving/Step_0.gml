#region State Machine
switch global_move_state {
	#region idle
	case move.idle:
		
		break
	#endregion	
	#region manual_under_finger
	case move.manual_under_finger:
		#region Locale State Machine
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
		#endregion
		break
	#endregion
	#region manual_drag
	case move.manual_drag:
		#region Locale State Machine
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
		#endregion
		break
	#endregion	
}
#endregion