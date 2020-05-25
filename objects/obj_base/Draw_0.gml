if(is_outlined) {
	outline_start(5, c_white);
	draw_self();
	outline_end();
} else {
	draw_self();
}