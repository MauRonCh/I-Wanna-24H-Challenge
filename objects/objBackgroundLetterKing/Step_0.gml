var cam = camera_properties(0)

yy += yspeed;

x = cam.view_x + xxx;
y = cam.view_y + yyy + yy;

if (outside_view(0) || outside_room()) {
    instance_destroy()
};