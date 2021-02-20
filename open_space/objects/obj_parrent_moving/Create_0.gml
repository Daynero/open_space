#region Создание вспомогательных переменных
manual_speed = 15 // Скорость перемещения корабля в ручном управлении
diff_x = 0 // Разница положения нажатия и корабля по Х
diff_y = 0 // Разница положения нажатия и корабля по Y
pos_x = 0 // Текущее положение мыши по Х
pos_y = 0 // Текущее положение мыши по Y
gesture_drag_time(0)
#endregion
#region Создание глобального переключателя состояний движения
enum move {
	idle,
	manual_under_finger,
	manual_drag 
}

global_move_state = move.idle
#endregion
#region Создание локальных состояний
enum locale_move {
	idle,
	finger_down,
	finger_up
}

locale_state = locale_move.idle
#endregion