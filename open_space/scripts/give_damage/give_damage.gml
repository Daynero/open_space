///@param damage
///@param crit_chance *возможно не нужно поднимать крит шанс больше 85% 
///@param crit_damage

if argument_count != 3 { sd("script give_damage wrong parameters count") exit}
if !is_real(argument[0]) && !is_real(argument[1]) && !is_real(argument[2]) { sd("script give_damage wrong parameters type") exit}

var max_crit_chance = 85 
var damage = argument[0]
var crit_chance = argument[1] > max_crit_chance ? max_crit_chance : argument[1]
var crit_damage = argument[2]
if random(100) < crit_chance 
	damage *= crit_damage
return damage
