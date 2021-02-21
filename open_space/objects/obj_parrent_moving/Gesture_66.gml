#region State Global Machine
switch global_move_state {
	#region idle
	case move.idle:
		
		break
	#endregion	
	#region player_manual_tap
	case move.player_manual_tap:
		
		if (event_data[?"touch"] == 0) {
			locale_state = locale_move.finger_down
			pos_x = event_data[?"posX"]
			pos_y = event_data[?"posY"]
		}
		
		break
	#endregion
	#region player_manual_drag
	case move.player_manual_drag:
		
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
