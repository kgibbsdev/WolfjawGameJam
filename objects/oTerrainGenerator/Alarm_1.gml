/// @description Spawn Tower
randomize();
var option = irandom(1)

if(option == 0) {
	generate_tower();
}
if(option == 1) {
	generate_left_hill();
	generate_right_hill();
}

alarm[1] = delay;