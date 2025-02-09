//COPY AND PASTE FOR ALL SCENES JUST MAKE SURE TO EDIT THE MESSAGE AND ALTERNATE BETWEEN CHARACTERS
messages = [
    "Act 1: The Bus Stop",
	"The protagonist, Mia, just got off work late.",
	"She is waiting alone at a quiet bus stop.",
	"Suddenly, an unfamiliar man approaches her.",
	"Excuse me ma'am, what time is it?",
	"What should Mia do?",
	"[Insert choice??]"
    
];

characters = [
	"Narrator",
	"Narrator",
	"Narrator",
	"Narrator",
	"Stranger",
	"Narrator",
	"Mia"
];
message_index = 0;  // Keeps track of which message is showing
message_length = 0; // Controls how many letters are shown
typing_speed = 0.3; // Speed of typing animation
timer = 0;
finished_typing = false; // Becomes true when typing is finished
