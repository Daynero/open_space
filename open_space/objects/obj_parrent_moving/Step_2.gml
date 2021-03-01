#region State Global Machine
switch global_move_state {
	#region enemy_space_debris
	case move.enemy_space_debris:
			switch locale_state {
				#region warning
				case locale_move.warning:
					var warning_x = x + hspeed * (120 / (((100 * calc_speed) / 2.2) / 100))
					var warning_y = y + vspeed * (120 / (((100 * calc_speed) / 2.2) / 100))
				
					if point_in_rectangle(warning_x, warning_y, global.view_delta_w,global.view_delta_h, global.view_width, global.view_height) && !warning_create {
						// Создание предупреждающего объекта
						warning_create = true
						instance_create_depth(warning_x, warning_y, -2000, obj_warning)
					}
					break
				#endregion
			}
		break
	#endregion	
}
#endregion
