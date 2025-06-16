// Set up explosion
image_speed = 0.3;  // Adjust animation speed if needed
image_index = 0;    // Start from first frame

// Calculate how many steps the animation will take
var total_frames = sprite_get_number(sprite_index);
var steps_per_frame = 2 / image_speed;
var total_steps = total_frames * steps_per_frame;

// Set alarm to destroy after animation completes
alarm[0] = total_steps;