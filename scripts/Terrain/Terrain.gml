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
	var blockHeight = sprite_get_height(spWall)
	var towerOpenSpace = blockWidth * 3;
	var bottomLayerY = window_get_height() - blockHeight;
	var spawnX = window_get_width()  + blockWidth;
	var leftWallSpawnY = bottomLayerY - blockHeight*3;
	for(var i=0; i < 4; i++) {
		instance_create(spawnX, (leftWallSpawnY - (i * blockHeight)), oWall);
	}
	
	var rightWallSpawnY = bottomLayerY - blockHeight
	for(var i=0; i < 4; i++) {
		instance_create(spawnX + towerOpenSpace, (rightWallSpawnY - (i * blockHeight)), oWall);
	}
	
}
