x -= global.game_speed * 0.35;

if (x <= -sprite_width)
{
    x += sprite_width * 8;

    // Pick a new random building
    var r = irandom(99);

    if (r < 30)
    {
        sprite_index = sBuilding03;
    }
    else if (r < 60)
    {
        sprite_index = sBuilding05;
    }
    else if (r < 74)
    {
        sprite_index = sBuilding01;
    }
    else if (r < 86)
    {
        sprite_index = sBuilding02;
    }
    else if (r < 98)
    {
        sprite_index = sBuilding04;
    }
    else
    {
        sprite_index = sBuilding06;
    }
}