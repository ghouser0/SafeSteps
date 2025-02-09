// STEP EVENT

// TO CHECK IS MOUSE IS HOVERING OVER THE BUTTON
is_hovered = window_mouse_x > x - sprite_width / 2 && window_mouse_x < x + sprite_width / 2 && window_mouse_y > y - sprite_height / 2 && window_mouse_y < y + sprite_height / 2;

// TO CHECK IF THE MOUSE HAS BEEN CLICKED
if(is_hovered && mouse_check_button_pressed(mb_left)){
	is_clicked = true; 
}

// IF CLICKED GO TO RESOURCES ROOM
if(is_clicked){
	room_goto(rm_resources);
	is_clicked = false;
}