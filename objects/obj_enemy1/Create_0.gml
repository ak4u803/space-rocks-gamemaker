// Movement properties
speed = 1;
direction = random(360);  // Random initial direction

// Health system
max_health = 50;
health = max_health;

// Shooting properties
shoot_timer = 0;
shoot_delay = room_speed * 2;  // Shoot every 2 seconds

// Hit flash properties
flash_timer = 0;
flash_duration = 5;  // How long to flash red (in steps)

// Screen wrapping
move_wrap(true, true, 0);

// ... existing code ...
// Direction update timing
last_direction_update = current_time;
// ... existing code ...