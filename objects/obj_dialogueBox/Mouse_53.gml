if (finished_typing) { // If typing is complete
    if (message_index < array_length(messages) - 1) {
        message_index += 1; // Move to the next message
        message_length = 0; // Reset typing effect
        finished_typing = false;
    }
} else {
    message_length = string_length(messages[message_index]); // Instantly finish typing if clicked
}