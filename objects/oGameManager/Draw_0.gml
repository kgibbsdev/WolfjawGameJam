with(oPlayer) {
	if(isDead) {
	
		font_set(fntGame, fa_center, fa_middle);
		textX = window_get_width()/2;
		textY = window_get_height()/2;
		
		draw_text_transformed_colour(textX, textY, "YOU DIED.", 2, 2, 1, c_white, c_white, c_white, c_white, 1);

		textX = window_get_width()/2;
		textY = window_get_height()/2 + 100;
		draw_text_transformed_colour(textX, textY, "Press enter to restart", 2, 2, 1, c_white, c_white, c_white, c_white, 1);

		if(keyboard_check_pressed(vk_enter)) {
			room_restart();	
		}
	}
}

font_set(fntGame, fa_center, fa_middle);
textX = window_get_width()-200;
textY = window_get_height()-128;
		
//draw_text_transformed_colour(textX, textY, $"Block Count: {global.blockCount}", 2, 2, 1, c_white, c_white, c_white, c_white, 1);

textX = window_get_width()-200;
textY = window_get_height()-384;
		
draw_text_transformed_colour(textX, textY, $"Act number: {global.actNumber}", 2, 2, 1, c_white, c_white, c_white, c_white, 1);


font_set(fntGame, fa_center, fa_middle);
textX = window_get_width()-200;
textY = window_get_height()-256;
		
draw_text_transformed_colour(textX, textY, $"Keys: {global.numKeys}", 2, 2, 1, c_white, c_white, c_white, c_white, 1);
