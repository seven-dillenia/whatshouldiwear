// if player hasn't interact with any clothing object
if(global.free_range) {
	
	// get all of the clothes objs that the mouse is being colling with
	var _list = ds_list_create();
	var _num = instance_position_list(mouse_x, mouse_y, obj_clothes, _list, true);
	
	// if the mouse is colliding with clothing objects
	if _num > 0 {
		var _closest_obj = noone; 
		
		// loop through the objects that is colliding with the mouse
		// find the closest object to the player
		for (var i = 0; i < _num; ++i;) {
			var _current_obj = _list[| i];
			
			if(_closest_obj == noone) {
				_closest_obj = _current_obj;
			}
			
			// find the closest obj by checking its depth
			if (_current_obj.default_depth < _closest_obj.default_depth){
				_closest_obj = _current_obj;
			}
		}

		// assign the closest instance to global.locked_instance
		global.locked_instance = _closest_obj;
	}
	ds_list_destroy(_list);
}

