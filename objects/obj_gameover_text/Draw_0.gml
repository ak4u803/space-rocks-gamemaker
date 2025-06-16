// Set up text properties
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_game_over);  // You'll need to create this font
draw_set_color(c_red);

// Draw shadow
draw_set_alpha(0.5);
draw_text(room_width/2 + 4, room_height/2 - 50 + 4, "GAME OVER");

// Draw main text
draw_set_alpha(1);
draw_text(room_width/2, room_height/2 - 50, "GAME OVER");

// Reset text properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);