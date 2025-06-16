health -= 25

// Damage player on collision
if (instance_exists(obj_player)) {
    with (obj_player) {
        if (variable_instance_exists(id, "health") && variable_instance_exists(id, "is_alive")) {
            if (is_alive) {
                health -= 25;  // Deal 25 damage to player
                
                // Create explosion effect using spr_enemy1_destroyed
                var explosion = instance_create_layer(x, y, "Instances", obj_explosion);
                explosion.sprite_index = spr_enemy1_destroyed;
                explosion.image_speed = 0.5;  // Adjust animation speed if needed
                explosion.image_angle = image_angle;  // Match the enemy's rotation
                
                // Destroy self
                instance_destroy();
            }
        }
    }
}