// sometimes the mouse leaves while grabbing
// and thats create a weird bug
if(active and !grab) {
	active = false;
	global.locked_instance = noone;
	global.free_range = true; 
}