#region State Global Machine
switch global_move_state {
	#region player_manual_tap
	case move.player_manual_tap:
		
		break
	#endregion
	#region player_manual_drag
	case move.player_manual_drag:
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
		break
	#endregion	
}
#endregion
//draw_rectangle(global.view_delta_w + 200,global.view_delta_h + 200, global.view_width - 200, global.view_height - 200, 1)
draw_self()