event_inherited();

if (global.time_stopped && path_speed != 0) { 
    previous_spd = path_speed;
    path_speed = 0;
}
    
if (!global.time_stopped && path_speed = 0) {
    path_speed = previous_spd;
}