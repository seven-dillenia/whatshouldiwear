// TODO: investigate this if statement
// somehow the hover = true needs to be there, or the logic won't work
if(global.locked_instance == id) {
	hover = true;
} else {
	hover = false;
}

if(grab == false) {
	depth = default_depth;
} else {
	x = mouse_x + xx;
	y = mouse_y + yy;
}