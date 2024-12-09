var cam = camera_properties(0)

previous_yspeed = -1;
yspeed = irandom_range(1,4);
xxx = xstart mod cam.view_w;
yyy = ystart mod cam.view_h;
yy = -1;
number = choose(0,1);
color = make_color_hsv(80, 240, irandom(255));
depth = layer_get_depth(layer) + (100 - remap(color_get_value(color), 0, 255, 0, 100));
scale = true;

