timer += typing_speed;
if (timer >= 1) {
    timer = 0;
    if (message_length < string_length(messages[message_index])) {
        message_length += 1;
    } else {
        finished_typing = true; // Typing has completed
    }
}
