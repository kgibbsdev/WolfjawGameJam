/// @description Spawn Tower
randomize();
var option = irandom(3)

if(option == 0) {
	generate_tower_with_low_door();
}
if(option == 1) {
	generate_left_hill();
	generate_right_hill();
}
if(option == 2) {
	generate_tower_with_high_door();
}
if(option == 3 and global.actNumber >= 10){
	generate_tower_with_exit_door();
}

alarm[1] = delay;