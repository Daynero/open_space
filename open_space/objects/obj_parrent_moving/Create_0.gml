#region Переменные управления полетом
manual_speed = 15 // Скорость перемещения корабля в ручном управлении
enemy_speed = 10 // Скорость перемещения вражеских кораблей
min_enemy_speed = 4 // Минимальная скорость передвижения вражеских кораблей (для рандомизации)
max_enemy_speed = 10 // Максимальная скорость передвижения вражеских кораблей (для рандомизации)
change_angle = irandom_range(-2, 2) // Скорость вращения космического мусора
#endregion
#region Создание вспомогательных переменных
diff_x = 0 // Разница положения нажатия и корабля по Х
diff_y = 0 // Разница положения нажатия и корабля по Y
pos_x = 0 // Текущее положение мыши по Х
pos_y = 0 // Текущее положение мыши по Y
gesture_drag_time(0)
#endregion
#region Создание глобального переключателя состояний движения
enum move {
	// Отсутствие движения
	idle,
	// Ручное управление при котором корабль стремится к положению пальца
	player_manual_tap,
	// Ручное управление при котором корабль повторяет движения пальца не зависимо от его местоположения
	player_manual_drag,
	// Космический мусор, передвежение по прямой линии  
	// симетрично разделяя экран (с заданым вращением вокруг своего центра)
	enemy_space_debris	
}

global_move_state = move.idle
#endregion
#region Создание локальных состояний
enum locale_move {
	idle,
	finger_down,
	finger_up,
	warning,
	start
}

locale_state = locale_move.start
#endregion

