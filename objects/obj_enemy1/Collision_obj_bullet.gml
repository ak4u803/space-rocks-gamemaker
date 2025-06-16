// Take damage from player bullets
health -= 25;  // Each bullet does 25 damage

// Start flash effect
flash_timer = flash_duration;

// Check if destroyed
if (health <= 0) {
    // Create explosion effect using spr_enemy1_destroyed
    var explosion = instance_create_layer(x, y, "Instances", obj_explosion);
    explosion.sprite_index = spr_enemy1_destroyed;
    explosion.image_speed = 0.5;  // Adjust animation speed if needed
    explosion.image_angle = image_angle;  // Match the enemy's rotation
    
    // Destroy self
    instance_destroy();
}

// Destroy the bullet
with (other) {
    instance_destroy();
}