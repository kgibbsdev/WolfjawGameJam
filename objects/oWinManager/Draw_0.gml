
var game_seconds = get_timer()/1000000;

font_set(fntWin, fa_center, fa_middle);
textX = display_get_gui_width()/2;
textY = 200+10*sin(7.8*game_seconds);
textRot = 15*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "YOU ESCAPED!", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);
