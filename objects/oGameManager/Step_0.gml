if(keyboard_check_pressed(vk_escape)) {
	game_end();	
}

if(keyboard_check_pressed(vk_f1)) {
	room_restart();
	audio_stop_all();
}

if(keyboard_check_pressed(vk_f2)) {
	global.gamePaused = !global.gamePaused;	
}

if(global.gamePaused) {
		global.gameSpeed = 0;
	} else {
		global.gameSpeed = 1;
	}