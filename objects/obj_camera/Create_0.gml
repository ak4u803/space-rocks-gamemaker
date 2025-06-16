// Create event for obj_camera
view_camera[0] = camera_create();
var cam = view_camera[0];

// To zoom in, reduce these values.
// Make sure to maintain the aspect ratio (1366 / 768 is roughly 1.77)
// For example, dividing by 1.25 for a slight zoom:
var new_width = 1366 / 1.15; // This would be approx 1092
var new_height = 768 / 1.15; // This would be approx 614

camera_set_view_size(cam, new_width, new_height); // Updated view size
camera_set_view_pos(cam, 0, 0);