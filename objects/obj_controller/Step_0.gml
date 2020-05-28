if(global.free_range) {
	var _list = ds_list_create();
	var _num = instance_position_list(mouse_x, mouse_y, obj_clothes, _list, true);
	if _num > 0 {
		var _closest_obj = noone; 
		for (var i = 0; i < _num; ++i;) {
			var _current_obj = _list[| i];
		
			if(_closest_obj == noone) {
				_closest_obj = _current_obj;
			}
			
			if (_current_obj.default_depth < _closest_obj.default_depth){
				_closest_obj = _current_obj;
			}
		}
		global.locked_instance = _closest_obj;
		global.locked_instance.hover = true;
	}
	ds_list_destroy(_list);
}

