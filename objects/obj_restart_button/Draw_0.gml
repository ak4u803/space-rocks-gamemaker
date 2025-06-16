// Check if mouse is over button
var btn_width = sprite_get_width(sprite_index);
var btn_height = sprite_get_height(sprite_index);
var mouse_over = point_in_rectangle(mouse_x, mouse_y, 
    x - btn_width/2, y - btn_height/2, 
    x + btn_width/2, y + btn_height/2);

// Draw the button sprite
if (mouse_over) {
    // Draw glowing effect
    draw_set_color(c_yellow);
    draw_set_alpha(0.3);
    draw_sprite_ext(sprite_index, 0, x, y, 1.1, 1.1, 0, c_white, 0.5);
    draw_set_alpha(1);
}

// Draw the main sprite
draw_set_color(c_white);
draw_self();

// Get sprite dimensions
var text_size = min(btn_width, btn_height) * 0.4;

// Draw button text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(-1);  // Use default font
draw_text_ext(x, y, "RESTART", text_size, btn_width - 20);

// Reset text properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
