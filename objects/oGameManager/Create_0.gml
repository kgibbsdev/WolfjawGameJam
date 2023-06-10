var monsterBuffer = 200;
playerIsAlive = true;
instance_create(sprite_get_width(spMonster)-monsterBuffer, window_get_height()/2, oMonster);
instance_create(window_get_width()/2, 0, oPlayer);