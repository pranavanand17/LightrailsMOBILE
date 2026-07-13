// Increase distance
global.distance += global.game_speed * 0.01;

// Spawn obstacles
obstacle_timer--;

if (obstacle_timer <= 0)
{
    instance_create_layer(
        room_width + 64,
        oRoad.y - 32,   // or a fixed Y value matching your road
        "Instances",
        oObstacle
    );

    obstacle_timer = irandom_range(90, 180);
}