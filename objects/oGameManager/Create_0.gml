global.blockCount = 0;
global.gameSpeed = 1;
global.gamePaused = false;
global.terrainSpeedBonus = 0;
global.terrainSpeedBonusLimit = 6;

playerIsAlive = true;
terrainSpeedUpDelay = 600;

var monsterBuffer = 200;
instance_create(sprite_get_width(spMonster)-monsterBuffer, window_get_height()/2 + 200, oMonster);
instance_create(window_get_width()/2, 0, oPlayer);
for(var i = 0; i < 10; i++) {
	instance_create(window_get_width()/2 + i*64, window_get_height()-sprite_get_height(spWall), oWall)	
}
instance_create(0, 0, oTerrainGenerator);
audio_play_sound(sndSummonTheRawk, 1, true);

alarm[0] = terrainSpeedUpDelay;