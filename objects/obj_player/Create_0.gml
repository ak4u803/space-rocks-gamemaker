// Health system
max_health = 100;
health = max_health;
lives = 3;          // Number of respawns
respawn_timer = 0;  // Countdown for respawn
is_alive = true;    // Track player state

// Engine system
engine_effect = spr_player_engine_effect_idle;  // Default to idle effect
engine_thrust = false;  // Track if engine is thrusting

// Game over state
game_over = false;
game_over_timer = 0;