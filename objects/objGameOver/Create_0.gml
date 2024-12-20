alarm[0] = 40;

if (room == rKingStage) {
	num = 2;
} else if (string_count("Guille", room_get_name(room)) >= 1) {
	num = 0;
} else {
	num = 1;
}