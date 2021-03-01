#region State Global Machine
switch global_move_state {
	#region player_manual_tap
	case move.player_manual_tap:
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
		break
	#endregion
	#region player_manual_drag
	case move.player_manual_drag:
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
		break
	#endregion	
}
#endregion
