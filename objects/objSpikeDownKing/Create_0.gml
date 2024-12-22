path_start(pth, spd, path_action_continue, false);
previous_spd = 0;

function time_stop_threshold() {
	var threshold = 0.05;
	
	if (path_position < threshold) {
		path_position = 0;
	}
			
	if (path_position > 0.5 - threshold && path_position < 0.5 + threshold) {
		path_position = 0.5;
	}
			
	if (path_position > 1 - threshold) {
		path_position = 1;
	}
}

event_perform(ev_step, ev_step_normal);