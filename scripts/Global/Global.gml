function init_menu(){
	instance_create(0, 0, oMainMenu);
}

function init_game(){
	instance_create(0,0,oGameManager);
}

function init_win_room() {
	instance_create(0, 0, oWinManager);	
}

function instance_create(x, y, instance) {
	return instance_create_depth(x, y, 0, instance);
}

function font_set(font, halign, valign) {
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}

function spawn_key() {
	var spawnX = irandom_range(window_get_width(), window_get_width() + 200);	
	var spawnY = irandom_range(200, window_get_height() - 120);
	if(place_empty(spawnX, spawnY)) {
		instance_create(spawnX, spawnY, oKey);	
	}
	else {
		spawn_key();	
	}
}