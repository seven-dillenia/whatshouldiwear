
// TODO: decouple the obj_controller and obj_draggable
if(hover) {
	grab = true;
	depth = global.smallest_depth; 

	// get relative click position
	xx = x - mouse_x;
	yy = y - mouse_y;
	
	global.free_range = false;
}

