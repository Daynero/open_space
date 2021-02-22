/// @description 
event_inherited();
ship_set("spr_main_ship")

add_gun("left", "test", 15, -18)
add_gun("front", "test", 30, 0)
add_gun("right", "test", 15,  18)

gesture_drag_distance(0.001)
global_move_state = move.player_manual_tap