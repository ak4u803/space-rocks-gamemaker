// Take damage from enemy bullets
if (is_alive) {
    health -= 25;  // Each enemy bullet does 25 damage
    
    // Create hit effect
    var explosion = instance_create_layer(x, y, "Instances", obj_explosion);
    explosion.sprite_index = spr_enemy1_destroyed;
    explosion.image_speed = 0.5;
    
    // Check for death
    if (health <= 0) {
        is_alive = false;
        visible = false;
        lives--;
        respawn_timer = room_speed * 2;  // 2 second respawn delay
    }
}

// Destroy the bullet
with (other) {
    instance_destroy();
}