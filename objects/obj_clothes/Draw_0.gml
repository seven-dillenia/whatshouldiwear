// TODO: add AND ACTIVE to the condition
if(grab or hover) {
	outline_start(5, c_white);
	draw_self();
	outline_end();
} else {
	draw_self();
}

