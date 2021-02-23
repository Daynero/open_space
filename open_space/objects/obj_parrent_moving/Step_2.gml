#region State Global Machine
switch global_move_state {
	#region enemy_space_debris
	case move.enemy_space_debris:
			switch locale_state {
				#region warning
				case locale_move.warning:
				var warning_x = x + hspeed * warning_dist
				var warning_y = y + vspeed * warning_dist
				 if point_in_rectangle(warning_x, warning_y, global.view_delta_w,global.view_delta_h, global.view_width, global.view_height) {
					sd("WARNING")	 
				 }
					break
				#endregion
			}
		break
	#endregion	
}
#endregion
