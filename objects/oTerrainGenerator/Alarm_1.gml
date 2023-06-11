/// @description Spawn Tower
randomize();
var option = irandom(2)

if(option == 0) {
	generate_tower();
}
if(option == 1) {
	generate_left_hill();
	generate_right_hill();
}
if(option == 2 and global.actNumber >= 10){
	generate_tower_with_exit_door();
}

alarm[1] = delay;