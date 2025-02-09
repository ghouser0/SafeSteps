// UPDATE MIA'S PHONE
update_phone_status();

// GAME STATE HANDLER
switch (scene) {
	case "rm_title":
    case "rm_bus_stop": // BUS STOP SCENE
        
        if (keyboard_check_pressed(ord("1"))) { // BEST CHOICE
            risk_level = 0;
            set_scene(2, 2);
        }
        if (keyboard_check_pressed(ord("2"))) { // MEDIUM RISK
            risk_level += 1;
        }
        if (keyboard_check_pressed(ord("3"))) { // HIGH RISK
            risk_level += 2;
        }
        if (risk_level > 3) {
            scene = 1; // RESET
        }
        break;
    
    case "rm_fake_uber": // FAKE UBER ARRIVES
        show_message("SCENE 2: A Wrong Car Arrives");

        if (keyboard_check_pressed(ord("1"))) { // SAFE CHOICE
            risk_level = max(0, risk_level - 1);
            show_message("The driver hesitates, then drives off quickly.");
            with(obj_fake_uber) {
                leaving = true;
                speed = drive_speed;
            }
            set_scene(3, 2);
        }
        if (keyboard_check_pressed(ord("2"))) { // HIGH RISK
            risk_level += 2;
            show_message("The driver smiles but doesn’t answer...");
        }
        if (keyboard_check_pressed(ord("3"))) { // DEFENSIVE MOVE
            risk_level += 1;
            show_message("The driver sighs and speeds off.");
        }
        if (risk_level > 4) {
            show_message("Your real Uber is still 5 minutes away!");
        }
        break;

    case "rm_walking_home": // WALKING HOME
        show_message("SCENE 3: Walking Home – The Dark Streets");

        if (keyboard_check_pressed(ord("1"))) { // CROSS THE STREET
            risk_level = max(0, risk_level - 2);
            show_message("The footsteps stop. Danger avoided.");
            set_scene(4, 2);
        }
        if (keyboard_check_pressed(ord("2"))) { // KEEP WALKING
            risk_level += 1;
            show_message("The footsteps also speed up behind her.");
        }
        if (keyboard_check_pressed(ord("3"))) { // CONFRONT THE PERSON
            risk_level += 3;
            show_message("A silhouette stops moving when she does.");
        }
        break;

    case "rm_final_intersection": // FINAL CHALLENGE – LAST INTERSECTION
        show_message("SCENE 4: The Final Intersection");

        if (keyboard_check_pressed(ord("1"))) { // BEST MOVE
            risk_level = max(0, risk_level - 1);
            show_message("The shadow keeps walking. It wasn’t a stalker.");
        }
        if (keyboard_check_pressed(ord("2"))) { // RISKY MOVE
            risk_level += 3;
            show_message("A car honks loudly—she nearly gets hit.");
        }
        if (keyboard_check_pressed(ord("3"))) { // CONFIDENCE PLAY (RANDOM OUTCOME)
            var outcome = irandom(1); // 50/50 CHANCE
            if (outcome == 0) {
                show_message("The footsteps leave.");
            } else {
                show_message("The footsteps speed up...");
                risk_level += 2;
            }
        }
		case "rm_end":
		
        break;
}

// ENDGAME CONDITIONS CHECK
if (risk_level >= 6) {
    show_message("Game Over: Mia didn't make it home safely...");
    game_restart();
} 
if (scene == 4 && risk_level < 6) {
    show_message("Mia arrives home safely. Game Completed!");
}
