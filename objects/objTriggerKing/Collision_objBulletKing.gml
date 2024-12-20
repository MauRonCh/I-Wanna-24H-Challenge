var need_keys_length = array_length(need_keys);
		
for (var i = 0; i < need_keys_length; i++) {
	if (ds_list_find_index(objTriggerController.trigger_active_keys, need_keys[i]) == -1 || image_index == 1) {
		exit;
	}
}

activate_trigger(key);

audio_play_sound(sndTriggerKing, 0, sound_loop);

if (event_trigger != null) {
	event_trigger();
}

image_index = 1;
instance_destroy(other);