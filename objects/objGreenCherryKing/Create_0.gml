image_speed = 0;
control = false;
aglspd = 0;
previous_angle = 0;
previous_hspeed = 0;
previous_vspeed = 0;

if (circle) {
    for (i = 0; i < 360; i += 360 / num) {
        a = instance_create_layer(x, y, layer, objGreenCherryKing)
        a.control = true
        a.xx = x
        a.yy = y
        a.distance = dis
        a.angle = i
        a.aglspd = spd
    }
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
        image_speed = 0
    };
    
    else {
        aglspd = previous_angle
        image_speed = 0
    }
};