var dmg = give_damage(damage, crit_chance, crit_damage)
var player_shoot = is_palyer_shoot()
with instance_create_depth(x, bbox_top, depth+1, obj_bullet) {
	damage = dmg
	image_angle = other.rotation-90
	direction = other.rotation
	speed = spd
	player_target = !player_shoot
}