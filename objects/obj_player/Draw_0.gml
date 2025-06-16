// Draw the player sprite
draw_self();

// Calculate the position for the engine (behind the ship)
// Use image_angle + 180 for the position offset to move backwards from the ship's facing direction.
// Increased the offset distance from 15 to 25 to ensure the effects clear the ship's hull.
var engine_offset_distance = 15; // Adjust this value as needed
var engine_x = x + lengthdir_x(engine_offset_distance, image_angle + 180);
var engine_y = y + lengthdir_y(engine_offset_distance, image_angle + 180);

// Draw the engine base
draw_sprite_ext(spr_player_engine, 0, engine_x, engine_y, 1, 1, image_angle + 180, c_white, 1);

// Draw the engine effect
if (is_alive) {
    draw_sprite_ext(engine_effect, 0, engine_x, engine_y, 1, 1, image_angle + 180, c_white, 1);
}


// ... existing code ...

// ... existing code ...


