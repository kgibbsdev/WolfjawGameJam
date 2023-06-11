
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