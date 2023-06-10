if(keyboard_check_pressed(vk_escape)) {
	game_end();	
}

if(keyboard_check_pressed(vk_f1)) {
	game_restart();	
}

if(keyboard_check_pressed(vk_f2)) {
	global.gamePaused = !global.gamePaused;	
}

with oTerrainGenerator{instance_destroy()}

numOfGenerators = instance_number(oTerrainGenerator);
if(global.blockCount < 1000 && numOfGenerators == 0) {
	instance_create(1300, 1, oTerrainGenerator);
}

if(global.gamePaused) {
		global.gameSpeed = 0;
	} else {
		global.gameSpeed = 1;
	}