//COPY AND PASTE FOR ALL SCENES JUST MAKE SURE TO EDIT THE MESSAGE AND ALTERNATE BETWEEN CHARACTERS
messages = [
    "Act 2: The Wrong Uber",
	"Unfortunately, Mia  missed the bus.",
	"Exhaustedly, she decides to order an Uber.",
	"5 minutes later, a black sedan approaches Mia.",
	"She notices the license plate doesn't match her Uber app.",
	"The driver lowers his window.",
	"Hey, are you Mia? Your Uber's here.",
	"What should Mia do?",
	"[Insert choice??]"
    
];

characters = [
	"Narrator",
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
