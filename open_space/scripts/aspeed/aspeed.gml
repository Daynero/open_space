// [(100 + УСА) × 0,01] / БВА *формула с доты

var attack_in_second = ((base_attack_speed + attack_speed) * 0.01)/attack_pause
var slow = slowmo()
return (1/attack_in_second) * slow