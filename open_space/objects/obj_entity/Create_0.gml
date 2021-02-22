/// @description Базовая сущность
event_inherited()
hp = 100
mp = 100
armor = 100
move_speed = 10
hp_regen = 1
mp_regen = 1
crit_mod = 1
block_mod = 1
hp_current = hp
mp_current = mp
setted_guns = ds_list_create()
image_angle = 90
rotation = image_angle
global_move_state = move.idle