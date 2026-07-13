x -= global.game_speed;


if (x < -sprite_width)
{
    x += sprite_width * 8;

    sprite_index = choose(
        sRoad_01,
        sRoad_02,
        sRoad_03,
        sRoad_04
    );
}