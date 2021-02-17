/// @description 
var col = ds_list_create()
collision_point_list(event_data[?"posX"], event_data[?"posY"],obj_enemy, 1, 1, col, 0)
for (var i = 0; i < ds_list_size(col); ++i) {
    with col[|i] take_damage(random_range(250, 450))
}