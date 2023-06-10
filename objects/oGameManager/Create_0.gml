global.blockCount = 0;
global.gameSpeed = 1;
global.gamePaused = false;
playerIsAlive = true;

var monsterBuffer = 200;
instance_create(1,1,oTerrainGenerator);
instance_create(sprite_get_width(spMonster)-monsterBuffer, window_get_height()/2, oMonster);
instance_create(window_get_width()/2, 0, oPlayer);