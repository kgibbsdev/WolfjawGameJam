global.blockCount = 0;
global.gameSpeed = 1;
global.gamePaused = false;
playerIsAlive = true;

var monsterBuffer = 200;
instance_create(sprite_get_width(spMonster)-monsterBuffer, window_get_height()/2 + 200, oMonster);
instance_create(window_get_width()/2, 0, oPlayer);
instance_create(0, 0, oTerrainGenerator);