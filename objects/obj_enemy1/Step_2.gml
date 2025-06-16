// Basic movement
if (instance_exists(obj_player)) {
    // Update direction once per second
    if (current_time - last_direction_update >= 1000) {  // 1000ms = 1 second
        // Calculate direction to player
        var dir_to_player = point_direction(x, y, obj_player.x, obj_player.y);
        
        // Set direction directly to player with some randomness
        direction = dir_to_player + random_range(-15, 15);  // Add slight randomness to make movement less predictable
        
        // Update the last direction update time
        last_direction_update = current_time;
    }
    
    // Move towards player
    motion_add(direction, 0.02);  // Increased acceleration for more aggressive pursuit
    
    // Limit maximum speed
    speed = min(speed, 3);  // Cap the maximum speed
}

// Make enemy face the direction it's moving
image_angle = direction;

// Shooting logic
shoot_timer++;
if (shoot_timer >= shoot_delay) {
    shoot_timer = 0;
    var bullet = instance_create_layer(x, y, "Instances", obj_enemy1_bullet);
    
    // Calculate direction to player
    if (instance_exists(obj_player)) {
        var dir_to_player = point_direction(x, y, obj_player.x, obj_player.y);
        bullet.direction = dir_to_player;
        bullet.image_angle = dir_to_player;
    }
}

// Handle hit flash
if (flash_timer > 0) {
    flash_timer--;
    image_blend = c_red;  // Flash red
} else {
    image_blend = c_white;  // Normal color
}

// Screen wrapping
move_wrap(true, true, 0);