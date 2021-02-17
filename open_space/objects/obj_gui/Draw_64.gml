/// @description Рисование хп/мп

#region temp
var hpx1 = 50
var hpx2 = 75
var mpx1 = room_width - 75
var mpx2 = room_width - 50
var py1  = room_height - 225
var py2  = room_height - 125
#endregion


draw_rectangle_color(hpx1, py1, hpx2, py2,c_white,c_green,c_silver,c_fuchsia,1)
draw_rectangle_color(mpx1, py1, mpx2, py2, c_white,c_green,c_silver,c_fuchsia,1)

var hp_precent
var mp_precent

with obj_player {
	hp_precent = (hp_current * 100) / hp
	mp_precent = (mp_current * 100) / mp
}

var hp_diff = (hp_precent * 100) / (py2 - py1)
var mp_diff = (mp_precent * 100) / (py2 - py1)

draw_set_color(c_red)
draw_rectangle(hpx1+1, py2-hp_diff+1,hpx2-1, py2-1,0)
draw_set_color(c_blue)
draw_rectangle(mpx1+1, py2-mp_diff+1,mpx2-1, py2-1,0)

draw_set_color(c_white)
with obj_enemy {
	draw_text(bbox_left, bbox_bottom, string(round(hp_current)) + " / " + string(round(hp)))	
}