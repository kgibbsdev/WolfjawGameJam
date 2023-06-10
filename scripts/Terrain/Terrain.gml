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
