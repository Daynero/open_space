#region State Global Machine
switch global_move_state {
	#region idle
	case move.idle:
		
		break
	#endregion	
	#region manual_under_finger
	case move.manual_under_finger:
		
		if (event_data[?"touch"] == 0) {
			locale_state = locale_move.finger_down
			pos_x = event_data[?"posX"]
			pos_y = event_data[?"posY"]
		}
		
		break
	#endregion
	#region manual_drag
	case move.manual_drag:
		
		if (event_data[?"touch"] == 0) {
			locale_state = locale_move.finger_down
			diff_x = x - event_data[?"posX"]
			diff_y = y - event_data[?"posY"]
			pos_x = event_data[?"posX"]
			pos_y = event_data[?"posY"]
		}
		
		break
	#endregion	
}
#endregion
