if (control) {
    x = xx + distance * cos(degtorad(angle))
    y = yy - distance * sin(degtorad(angle))
    angle += aglspd
};

if (global.time_stopped && aglspd != 0) {
    if (!control) {
        previous_hspeed = hspeed
        previous_vspeed = vspeed
        hspeed = 0
        vspeed = 0
        image_speed = 0
    };
    
    else {
        previous_angle = aglspd
        aglspd = 0
        image_speed = 0
    }
};

if (!global.time_stopped && aglspd = 0) {
    if (!control) {
        hspeed = previous_hspeed
        vspeed = previous_vspeed
        image_speed = 1/15
    };
    
    else {
        aglspd = previous_angle
        image_speed = 1/15
    }
};