var cam = camera_properties(0);

repeat (irandom_range(2, 20)) {
    instance_create_layer(cam.view_x + irandom(cam.view_w), cam.view_y + irandom(cam.view_h), layer, objBackgroundLetterKing);
}

alarm[0] = 20;