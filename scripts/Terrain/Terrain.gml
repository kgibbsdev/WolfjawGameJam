/// @description generateTerrain(startX, endX, frequency, amplitude, persistence, octaves, seed);
/// @param startX
/// @param  endX
/// @param  frequency
/// @param  amplitude
/// @param  persistence
/// @param  octaves
/// @param  seed
function generate_terrain() {
	var maxSpawnDelay = 10;
	var chunkSize = 10;
	var blockWidth = sprite_get_width(spWall);
	var blockHeight = sprite_get_height(spWall)
	var spawnX = window_get_width()  + blockWidth;
	var spawnY = window_get_height() - blockHeight;
	
	for(var i=0; i < chunkSize; i++) {
		instance_create((spawnX + i*blockWidth), spawnY, oWall);
	}
}

function generate_tower() {
	var blockWidth = sprite_get_width(spWall);
	var blockHeight = sprite_get_height(spWall);
	var towerOpenSpace = blockWidth * 3;
	var bottomLayerY = window_get_height() - blockHeight;
	var spawnX = window_get_width()  + blockWidth*5;
	var leftWallSpawnY = bottomLayerY - blockHeight*3;
	for(var i=0; i < 4; i++) {
		instance_create(spawnX, (leftWallSpawnY - (i * blockHeight)), oWall);
	}
	instance_create(spawnX,	bottomLayerY, oDoor);
	
	var rightWallSpawnY = bottomLayerY - blockHeight
	for(var i=0; i < 4; i++) {
		instance_create(spawnX + towerOpenSpace, (rightWallSpawnY - (i * blockHeight)), oWall);
	}
}

function generate_right_hill() {
	var blockWidth = sprite_get_width(spWall);
	var blockHeight = sprite_get_height(spWall);
	var bottomLayerY = window_get_height() - blockHeight;
	var spawnX = window_get_width()  + blockWidth*5;
	var rowLength = 4;
	//Hill row 1
	for(var i = 0; i < rowLength; i++) {
		instance_create(spawnX + i*blockWidth, bottomLayerY - blockHeight, oWall);	
	}
	
	//Hill row 2
	for(var i = 0; i < rowLength-1; i++) {
		instance_create(spawnX + i*blockWidth, bottomLayerY - blockHeight*2, oWall);	
	}
	
	//Hill row 3
	for(var i = 0; i < rowLength-2; i++) {
		instance_create(spawnX + i*blockWidth, bottomLayerY - blockHeight*3, oWall);	
	}
	
	//Hill row 4
	for(var i = 0; i < rowLength-3; i++) {
		instance_create(spawnX + i*blockWidth, bottomLayerY - blockHeight*4, oWall);	
	}
}

function generate_left_hill() {
	var blockWidth = sprite_get_width(spWall);
	var blockHeight = sprite_get_height(spWall);
	var bottomLayerY = window_get_height() - blockHeight;
	var spawnX = window_get_width()  + blockWidth *5;
	var rowLength = 4;
	//Hill row 1
	for(var i = 0; i < rowLength; i++) {
		instance_create(spawnX - i*blockWidth, bottomLayerY - blockHeight, oWall);	
	}
	
	//Hill row 2
	for(var i = 0; i < rowLength-1; i++) {
		instance_create(spawnX - i*blockWidth, bottomLayerY - blockHeight*2, oWall);	
	}
	
	//Hill row 3
	for(var i = 0; i < rowLength-2; i++) {
		instance_create(spawnX - i*blockWidth, bottomLayerY - blockHeight*3, oWall);	
	}
	
	//Hill row 4
	for(var i = 0; i < rowLength-3; i++) {
		instance_create(spawnX - i*blockWidth, bottomLayerY - blockHeight*4, oWall);	
	}	
}