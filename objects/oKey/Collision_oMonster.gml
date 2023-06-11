if(!collidedWithMonster) {
	collidedWithMonster = true;	
	audio_play_sound(sndBlockDestroyed, 1, false);
	verticalSpeed = random_range(-50, -20);
	horizontalSpeed = random_range(-30, -20);
}
