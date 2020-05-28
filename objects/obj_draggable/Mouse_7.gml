if(grab) {
	var _list3 = ds_list_create();
	var _num = instance_place_list(x, y, obj_clothes, _list3, false);

	if (_num > 0) {
		for (var i = 0; i < _num; i++) {
			var _current_clothe = _list3[|i];
		
			if (_current_clothe.default_depth <= default_depth) {
				default_depth = _current_clothe.default_depth - 1;
			}
		}
	}
	
	ds_list_destroy(_list3);

	if(global.smallest_depth >= default_depth) {
		global.smallest_depth = default_depth - 1; 
	}
	
	
	grab = false;
	active = false;
	global.free_range = true;
}
