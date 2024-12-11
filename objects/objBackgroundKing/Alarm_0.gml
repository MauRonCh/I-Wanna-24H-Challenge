var cam = camera_properties(0);

repeat (2) {
    repeat (irandom_range(1,10)) {
        instance_create_layer(cam.view_x + irandom(cam.view_w), cam.view_y + irandom(cam.view_h), "King", objBackgroundLetterKing);
    }
};

alarm[0] = 20;