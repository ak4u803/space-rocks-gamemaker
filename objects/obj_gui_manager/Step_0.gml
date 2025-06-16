// Debug message to verify GUI manager is running
if (instance_exists(obj_player)) {
    with (obj_player) {
        if (is_alive) {
            show_debug_message("Player health: " + string(health) + "/" + string(max_health));
        }
    }
}