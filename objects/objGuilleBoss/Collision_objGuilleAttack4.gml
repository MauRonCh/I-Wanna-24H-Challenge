audio_play_sound(sndBossHit, 0, false)
instance_destroy(other);
current_hp--;

if (current_hp == 0) {
	instance_destroy(objPlayer);
	room_goto_next();
}