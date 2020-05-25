event_inherited();

var inst = instance_place(x,y,obj_clothes)

if(inst != noone) {
	
	if(inst.is_snapped) {
		is_outlined = false; 
	} else {
		is_outlined = true; 
	}
} else {
	is_outlined = false;
}