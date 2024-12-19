image_speed = 0;
control = false;
aglspd = 0;
previous_angle = 0;
previous_hspeed = 0;
previous_vspeed = 0;

if (circle) {
    for (i = 0; i < 360; i += 360 / num) {
        a = instance_create_layer(x, y, layer, objCherryKing)
        a.control = true;
        a.xx = x;
        a.yy = y;
        a.distance = dis;
        a.angle = i;
        a.aglspd = spd;
    }
}

event_perform(ev_step, ev_step_normal);