// End Step event for obj_camera
if (instance_exists(obj_player)) {
    var cam = view_camera[0];
    var target_x = obj_player.x;
    var target_y = obj_player.y;
    
    // Get current camera position
    var current_x = camera_get_view_x(cam);
    var current_y = camera_get_view_y(cam);
    
    // Calculate new position with smooth follow
    var new_x = lerp(current_x, target_x - camera_get_view_width(cam)/2, 0.1);
    var new_y = lerp(current_y, target_y - camera_get_view_height(cam)/2, 0.1);
    
    // Update camera position
    camera_set_view_pos(cam, new_x, new_y);
}