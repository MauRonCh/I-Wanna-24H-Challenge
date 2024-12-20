if (other.jump_total != jumps) {
	audio_play_sound(sndChangeJumpMauri, 0, false);

    if (jumps = 0) { 
		other.jump_left = 0; 
	} else if (other.jump_left < other.jump_total) {
		other.jump_left += jumps - other.jump_total; 
	} else if (other.jump_left > 0) {
		other.jump_left -= jumps + other.jump_total; 
	}
    other.jump_total = jumps;

    effect = true;
	scale = 1;
    alpha = 1;
}