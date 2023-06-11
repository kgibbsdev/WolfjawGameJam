x += (horizontalSpeed - global.terrainSpeedBonus) * global.gameSpeed;

if(place_meeting(x, y, oPlayer)) {
	instance_destroy();	
}