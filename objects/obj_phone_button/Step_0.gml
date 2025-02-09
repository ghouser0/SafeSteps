// STEP EVENT

// CHECK IF HOVERED
is_hovered = window_mouse_x > x - sprite_width / 2 && window_mouse_x < x + sprite_width / 2 && window_mouse_y > y - sprite_height / 2 && window_mouse_y < y + sprite_height / 2;

// CHECK IF CLICKED
if (is_hovered && mouse_check_button_pressed(mb_left)) {
    is_clicked = true;
    alarm[0] = 1;  // ALARM TO SWITCH ROOMS
}
