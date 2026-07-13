// Position
var bar_x = 20;
var bar_y = 20;

var bar_width = 200;
var bar_height = 20;


// Get stamina
var current_stam = oCar.stamina;
var max_stam = oCar.max_stamina;


// Calculate percentage
var percent = clamp(current_stam / max_stam, 0, 1);


// Background
draw_set_color(c_black);
draw_rectangle(
    bar_x,
    bar_y,
    bar_x + bar_width,
    bar_y + bar_height,
    false
);


// Fill
draw_set_color(c_aqua);
draw_rectangle(
    bar_x,
    bar_y,
    bar_x + (bar_width * percent),
    bar_y + bar_height,
    false
);


// Border
draw_set_color(c_white);
draw_rectangle(
    bar_x,
    bar_y,
    bar_x + bar_width,
    bar_y + bar_height,
    true
);