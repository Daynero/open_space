with obj_player {
	for (var i = 0; i < ds_list_size(setted_guns); ++i) {
		if other.id = setted_guns[|i].id return true
	}
}
return false