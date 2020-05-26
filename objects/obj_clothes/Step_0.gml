event_inherited();



// being grabbed
if (grab) {
	// check if clothing item is touching base
	if(place_meeting(x, y, obj_base)) {
		is_touching_base = true; 
	} else {
		is_touching_base = false; 
	}
	
	// check if the clothing item is already on the base
	if(is_snapped) {
		is_snapped = false; 
	}
} else {
	if(is_touching_base) {
		x = obj_base.x + diff_x;
		y = obj_base.y + diff_y; 
	
		is_snapped = true; 
		event_user(animate_sprite);	
	}
}

if (hover or grab or is_snapped) {
	event_user(animate_sprite)
}

if(!hover and !grab and !is_snapped) {
	image_index = default_image_index;
}
