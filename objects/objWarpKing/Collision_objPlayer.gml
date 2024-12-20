if (warp_x != -1) {
	objPlayer.x = warp_x + 23;
}
	
if (warp_y != -1) {
	objPlayer.y = warp_y + 17;
}

audio_play_sound(sndTeleJump, 0, false);