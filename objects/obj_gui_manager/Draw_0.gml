// Draw health bar above the player
if (instance_exists(obj_player)) {
    with (obj_player) {
        if (is_alive) {
            // Calculate health bar position
            var bar_width = 40;
            var bar_height = 6;
            var bar_x = x - (bar_width / 2);
            var bar_y = y - 35;  // Position above the player
            
            // Ensure health is within bounds
            var current_health = clamp(health, 0, max_health);
            var health_percent = current_health / max_health;
            
            // Draw background
            draw_set_color(c_black);
            draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);
            
            // Draw health bar fill
            var health_color = make_color_rgb(255 * (1 - health_percent), 255 * health_percent, 0);
            draw_set_color(health_color);
            draw_rectangle(bar_x + 1, bar_y + 1, bar_x + 1 + ((bar_width - 2) * health_percent), bar_y + bar_height - 1, true);
            
            // Draw border
            draw_set_color(c_white);
            draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
        }
    }
}