
if (string_count("Guille", room_get_name(room)) >= 1) {
    skin = "Guille";
} else if (room == rKingStage) {
    skin = "King";
} else {
    skin = "Normal";
}