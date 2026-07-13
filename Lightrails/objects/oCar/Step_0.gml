if (alive)
{
    boosting = false;


    // Accelerate
    if (keyboard_check(vk_space) && stamina > 0 && !boost_locked)
	{
	    boosting = true;

	    speed += acceleration;
	    stamina -= boost_drain;
	}
	else
	{
	    boosting = false;

	    speed -= friction;
	    stamina += stamina_recover;
	}


	// Lock boost when empty
	if (stamina <= 0)
	{
	    boost_locked = true;
	}


	// Allow boost again after recovery
	if (stamina >= 25)
	{
	    boost_locked = false;
	}


    // Limits
    speed = clamp(speed, idle_speed, max_speed);
    stamina = clamp(stamina, 0, max_stamina);


    // Car movement illusion
    if (boosting)
    {
        x = base_x + boost_offset;
    }
    else
    {
        x = base_x;
    }


    // Send speed to world
	global.game_speed = speed * world_multiplier;
}