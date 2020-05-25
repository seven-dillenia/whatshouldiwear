/// @description Change Frame
var rand_num = image_index;

while (rand_num == image_index) {
	rand_num = floor(random_range(0, image_number));
}

image_index = rand_num;
alarm[0] = room_speed * 0.125;
