// Position
base_x = x;
boost_offset = 15;

// Speed
idle_speed = 3;
max_speed = 7;

speed = idle_speed;

acceleration = 0.08;
friction = 0.05;


// Stamina
max_stamina = 100;
stamina = max_stamina;

boost_drain = 0.5;
stamina_recover = 0.25;


// State
alive = true;
boosting = false;


// Sprites
normal_sprite = sprite_index;
nitro_sprite = sprite_index;
crash_sprite = sprite_index;

world_multiplier = 3;

boost_locked = false;

// World speed
global.game_speed = speed * world_multiplier;