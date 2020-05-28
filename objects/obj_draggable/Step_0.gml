// TODO: investigate this if statement
// somehow the hover = true needs to be there, or the logic won't work
if(global.locked_instance == id) {
	active = true;
} else {
	active = false;
}

if(grab) {
	x = mouse_x + xx;
	y = mouse_y + yy;
} else {
	depth = default_depth;
}