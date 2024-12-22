if (global.time_stopped && path_speed != 0) { 
    previous_spd = path_speed;
    path_speed = 0;
	time_stop_threshold();
}
    
if (!global.time_stopped && path_speed == 0) {
    path_speed = previous_spd;
}