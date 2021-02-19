///@param ship_name имя корабля который нужно вытянуть из мапы с кораблями

if argument_count != 1 { sd("ship_set script wrong parameters count") exit}
if !is_string(argument[0]) { sd("ship_set script wrong parameter type") exit}

var ship = global.ships[?argument[0]]
if is_undefined(ship) { sd("ship_set script does not exists ship in map") exit}
hp = ship[?"hp"]
mp = ship[?"mp"]
armor = ship[?"armor"]
move_speed = ship[?"move_speed"]
hp_regen = ship[?"hp_regen"]
mp_regen = ship[?"mp_regen"]
crit_mod = ship[?"crit_mod"]
block_mod = ship[?"block_mod"]
hp_current = hp
mp_current = mp
var spr = asset_get_index(argument[0])
if spr != -1 
	sprite_index = spr