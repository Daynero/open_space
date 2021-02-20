#region State Global Machine
switch global_move_state {
	#region idle
	case move.idle:
		
		break
	#endregion	
	#region manual_under_finger
	case move.manual_under_finger:
		
		break
	#endregion
	#region manual_drag
	case move.manual_drag:
		#region Locale State Machine
			switch locale_state {
				#region idle
				case locale_move.idle:
		
					break
				#endregion
				#region finger_down
				case locale_move.finger_down:
						var target_x = mouse_x + diff_x
						var target_y = mouse_y + diff_y
						draw_circle(target_x, target_y, 6,1)
						
					
					
				
					break
				#endregion
				#region finger_up
				case locale_move.finger_up:
		
					break
				#endregion
			}
			#endregion
		break
	#endregion	
}
#endregion

draw_self()