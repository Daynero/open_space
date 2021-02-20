#region State Global Machine
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
				
				if (event_data[?"touch"] == 0) {
					pos_x = event_data[?"posX"]
					pos_y = event_data[?"posY"]
				}
					
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
				
				if (event_data[?"touch"] == 0) {
					pos_x = event_data[?"posX"]
					pos_y = event_data[?"posY"]
				}
					
				break
			#endregion
		}
		#endregion
		break
	#endregion	
}
#endregion
