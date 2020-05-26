event_inherited();

// ----------------------------- OUTLINE BASE
// outline is false until proven other wise
is_outlined = false; 

// ---------------- Get all the instances that is currently colliding with base
var _clothes_list = ds_list_create();
var _num_of_clothes = instance_place_list(x, y, obj_clothes, _clothes_list, false);

if (_num_of_clothes > 0) {
	for (var i = 0; i < _num_of_clothes; i++) {
		
		// get the ids of the intances
		var _clothe = _clothes_list[|i];
		
		// if the current clothe is NOT yet snapped, then outline is true
		if(!_clothe.is_snapped) {
			is_outlined = true; 
			break;
		}
	}
}

ds_list_destroy(_clothes_list)