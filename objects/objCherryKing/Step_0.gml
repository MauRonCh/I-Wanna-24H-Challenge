if (global.time_stopped && aglspd != 0) {
    if (!control) {
        previous_hspeed = hspeed;
        previous_vspeed = vspeed;
        hspeed = 0;
        vspeed = 0;
    } else {
        previous_angle = aglspd;
        aglspd = 0;
    }
}

if (!global.time_stopped && aglspd == 0) {
    if (!control) {
        hspeed = previous_hspeed;
        vspeed = previous_vspeed;
    } else {
        aglspd = previous_angle;
    }
}

if (control) {
	x = xx + lengthdir_x(distance, angle);
	y = yy + lengthdir_y(distance, angle);
    angle += aglspd;
}