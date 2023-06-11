if(place_meeting(x, y, oPlayer)) {

	global.numKeys += 1;
	show_debug_message($"numKeys: {global.numKeys}");
	instance_destroy();
}

if(collidedWithMonster) {
	image_angle += 25;
	
	if(!deathAnimationStarted) {
		deathAnimationStarted = true;
	}
	
	verticalSpeed = lerp(verticalSpeed, 20, 0.1);
}

x += (horizontalSpeed - global.terrainSpeedBonus) * global.gameSpeed;
y += verticalSpeed * global.gameSpeed;

if(x < -2000 or y > 2000) {
	instance_destroy();	
}