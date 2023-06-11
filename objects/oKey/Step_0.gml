x += (horizontalSpeed - global.terrainSpeedBonus) * global.gameSpeed;

if(place_meeting(x, y, oPlayer)) {

	global.numKeys += 1;
	show_debug_message($"numKeys: {global.numKeys}");
	instance_destroy();
}
