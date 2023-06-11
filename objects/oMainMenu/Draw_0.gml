
var game_seconds = get_timer()/1000000;

font_set(fntGame, fa_center, fa_middle);
var textX = display_get_gui_width()/2;
var textY = 100+10*sin(7.8*game_seconds);
var textRot = 5*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "JAM GAME", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);

font_set(fntGame, fa_center, fa_middle);
var textX = display_get_gui_width()/2;
var textY = 200+10*sin(7.8*game_seconds);
var textRot = 5*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "Stay on screen!", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);


var textX = display_get_gui_width()/2;
var textY = 300+10*sin(7.8*game_seconds);
var textRot = 5*sin(10*game_seconds);
var spriteRot = 5*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "Collect keys!", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(spKey, 0, textX-150, textY, 0.5, 0.5, spriteRot, c_white, 1);

var textX = display_get_gui_width()/2;
var textY = 400+10*sin(7.8*game_seconds);
var textRot = 2*sin(10*game_seconds);
var spriteRot = 2*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "Doors need keys to open", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(spDoor, 0, textX-250, textY, 0.5, 0.5, spriteRot, c_white, 1);

var textX = display_get_gui_width()/2;
var textY = 500+10*sin(7.8*game_seconds);
var textRot = 2*sin(10*game_seconds);
var spriteRot = 2*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "Reach an exit door with 5 keys to ESCAPE!", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(spExitDoor, 0, textX-400, textY, 0.5, 0.5, spriteRot, c_white, 1);

var textX = display_get_gui_width()/2;
var textY = 600+10*sin(7.8*game_seconds);
var textRot = 2*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "WASD/Arrow Keys to move/Space to Jump", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);

var textX = display_get_gui_width()/2;
var textY = 700+10*sin(7.8*game_seconds);
var textRot = 2*sin(10*game_seconds);

draw_text_transformed_colour(textX, textY, "Press Enter", 2, 2, textRot, c_white, c_white, c_white, c_white, 1);
