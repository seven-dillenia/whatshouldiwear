event_inherited();
image_index = default_image_index; 

// being grabbed
if (grab) {
	// check if clothing item is touching base
	if(place_meeting(x, y, obj_base)) {
		is_touching_base = true; 
	} else {
		is_touching_base = false; 
	}
	
	// check if the clothing item is already snapped to the base
	if(is_snapped) {
		is_snapped = false; 
	}
} if (!grab and is_touching_base) {
	is_snapped = true;
}

if(is_snapped) {
	x = obj_base.x + diff_x;
	y = obj_base.y + diff_y; 
	depth = 0;
}

if (active or is_snapped){
	event_user(animate_sprite)
}
