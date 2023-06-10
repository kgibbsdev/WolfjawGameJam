function init_menu(){
	instance_create(0, 0, oMainMenu);
}

function init_game(){
	instance_create(0,0,oGameManager);
}

function instance_create(x, y, instance) {
	return instance_create_depth(x, y, 0, instance);
}

function font_set(font, halign, valign) {
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}