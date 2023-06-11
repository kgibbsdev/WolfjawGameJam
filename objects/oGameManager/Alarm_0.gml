/// @description Increase terrain speed

if(global.terrainSpeedBonus <= global.terrainSpeedBonusLimit) {
	global.terrainSpeedBonus++;	
	alarm[0] = terrainSpeedUpDelay;
}

