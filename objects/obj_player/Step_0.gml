// Only process controls and movement if player is alive
if (is_alive) {
    // Movement controls
    if (keyboard_check(ord("W")))  // W key for forward thrust
    {
        motion_add(image_angle, 0.05);
        engine_effect = spr_player_engine_effect_powered;  // Switch to powered effect
        engine_thrust = true;
    } else {
        engine_effect = spr_player_engine_effect_idle;  // Switch back to idle effect
        engine_thrust = false;
    }

    // Rotation controls
    if (keyboard_check(ord("A")))  // A key for left rotation
    {
        image_angle += 4;
    }

    if (keyboard_check(ord("D")))  // D key for right rotation
    {
        image_angle -= 4;
    }

    // Screen wrapping
    move_wrap(true, true, 0);

    // Shooting/firing
    if (mouse_check_button_pressed(mb_left))
    {
        instance_create_layer(x, y, "Instances", obj_bullet);
    }

    // Update sprite based on health percentage
    if (health <= 25) {
        sprite_index = spr_player_heavy_damage;
    } else if (health <= 50) {
        sprite_index = spr_player_damage;
    } else if (health <= 75) {
        sprite_index = spr_player_slight_damage;
    } else {
        sprite_index = spr_player;
    }

    // Camera follow
    var camera = camera_get_active();
    if (camera != -1) {
        camera_set_view_pos(camera, x - camera_get_view_width(camera)/2, y - camera_get_view_height(camera)/2);
    }
}

// Handle health and death
if (is_alive) {
    // Ensure health stays within bounds
    health = clamp(health, 0, max_health);
    
    // Check for death
    if (health <= 0) {
        is_alive = false;
        visible = false;
        lives--;
        respawn_timer = room_speed * 2;  // 2 second respawn delay
        
        // Create death explosion
        var explosion = instance_create_layer(x, y, "Instances", obj_explosion);
        explosion.sprite_index = spr_enemy1_destroyed;
        explosion.image_speed = 0.5;
    }
}

// Handle respawn logic
if (!is_alive) {
    respawn_timer--;
    
    if (respawn_timer <= 0) {
        if (lives > 0) {
            // Respawn player
            x = room_width/2;
            y = room_height/2;
            visible = true;
            is_alive = true;
            health = max_health; // Reset health on respawn
            sprite_index = spr_player; // Reset sprite
            engine_effect = spr_player_engine_effect_idle; // Reset engine effect
        } else {
            // Game over
            game_over = true;
            game_over_timer = room_speed * 5;  // Show game over for 5 seconds
        }
    }
}

// Handle game over
// Handle game over
if (lives <= 0) {
    room_goto(rm_gameover);
}
