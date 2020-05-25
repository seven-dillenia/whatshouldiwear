event_inherited();

if (hover) {
	event_user(animate_sprite)
}

if(grab) {
	event_user(animate_sprite);
	
	if(place_meeting(x, y, obj_base)) {
		is_touching_base = true; 
	} else {
		is_touching_base = false; 
	}
	exit; 
} else {
	if(is_touching_base) {
		x = obj_base.x + diff_x;
		y = obj_base.y + diff_y; 
		is_snapped = true;
		event_user(animate_sprite);	
	} else {
		is_snapped = false; 
	}
	exit; 
}

image_index = default_image_index;

