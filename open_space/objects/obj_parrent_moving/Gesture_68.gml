#region State Global Machine
switch global_move_state {
	#region player_manual_tap
	case move.player_manual_tap:
		#region Locale State Machine
		switch locale_state {
			#region finger_down
			case locale_move.finger_down:
					
				if (event_data[?"touch"] == 0) {
					speed = 0
					locale_state = locale_move.idle
				}
					
				break
			#endregion
		}
		#endregion
		break
	#endregion
	#region player_manual_drag
	case move.player_manual_drag:
		switch locale_state {
			#region finger_down
			case locale_move.finger_down:
					
				if (event_data[?"touch"] == 0) {
					speed = 0
					locale_state = locale_move.idle
				}
					
				break
			#endregion
		}
		break
	#endregion	
}
#endregion
