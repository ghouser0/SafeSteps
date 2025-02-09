// GAME STATE TRACKING
scene = rm_bus_stop;
risk_level = 0;
player_choice = 0;


// MIA'S PHONE STATUS FUNCTION
function update_phone_status() {
    with(obj_mia) {
        checked = opened;
        if (checked) {
            risk_level = max(0, risk_level + 0.5); // TO PREVENT RISK LEVEL FROM GOING NEGATIVE
        }
    }
}

// DELAYED TRANSITIONS
alarm[0] = -1;
function set_scene(new_scene, delay) {
    alarm[0] = room_speed * delay; // DELAY IN SECS
    next_scene = new_scene;
}