///@param damage Урон нанесенный юнитом - предполагается что он полность посчитан вместе с критом и пробиваемостью*
///@desc Урон будет резатся броней *и возможно дополнительно какими нибуть ефектами типа силового поля и тд
///@desc аромор не должен блокироать больше 80-85% урона
if argument_count != 1 { sd("script take_damage wrong parameters count") exit}
if !is_real(argument[0]) { sd("script take_damage argument is not real") exit}
var damage = argument[0]
var armor_mp = armor/1500 >= 0.85 ? 0.85 : armor/1500
var total_damage = damage - damage*armor_mp
//sd("damage " + string(damage))
//sd("armor_mp " + string_format(armor_mp, 10, 10))
//sd("total_damage " + string(total_damage))
hp_current -= total_damage
check_death()
