if(collidedWithMonster) {
	image_angle += 25;
	
	if(!deathAnimationStarted) {
		deathAnimationStarted = true;
	}
	
	verticalSpeed = lerp(verticalSpeed, 20, 0.1);
}

x += horizontalSpeed * global.gameSpeed;
y += verticalSpeed * global.gameSpeed;