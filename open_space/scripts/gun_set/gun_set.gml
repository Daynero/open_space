///@param gun_type тип орудия которое нужно вытянуть из мапы с орудиями
///@param gun_name имя орудия которое нужно вытянуть из мапы с орудиями

if argument_count != 2 { sd("gun_set script wrong parameters count") exit}
if !is_string(argument[0]) && !is_string(argument[1]) { sd("gun_set script wrong parameter type") exit}

var type = global.guns[?argument[0]]
if is_undefined(type) { sd("gun_set script does not exists type in map") exit}
var gun = type[?argument[1]]
if is_undefined(gun) { sd("gun_set script does not exists gun in map") exit}

damage = gun[?"damage"]
attack_speed = gun[?"attack_speed"]
base_attack_speed = gun[?"base_attack_speed"]
attack_pause = gun[?"attack_pause"]
penetrating = gun[?"penetrating"]
crit_chance = gun[?"crit_chance"]
crit_damage = gun[?"crit_damage"]
damage_type = gun[?"damage_type"]
diffx = gun[?"diffx"]
diffy = gun[?"diffy"]

var spr = asset_get_index(string(argument[0])+"_"+string(argument[1]))
if spr != -1 sprite_index = spr