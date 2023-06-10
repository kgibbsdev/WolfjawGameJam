var monsterBuffer = 200;

instance_create(sprite_get_width(spMonster)-monsterBuffer, window_get_height()/2, oMonster);

// Changed this to a spawn point to negate the need to disable jumping until player reaches ground.
instance_create(oPlayerSpawnPoint.x+ (oPlayerSpawnPoint.sprite_width/2), oPlayerSpawnPoint.y+(oPlayerSpawnPoint.sprite_height/2), oPlayer)
//instance_create(window_get_width()/2, 0, oPlayer);