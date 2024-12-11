if (is_pressed(global.controls.right)) {
    direction = 0;
} else if (is_pressed(global.controls.left)) {
    direction = 180;
} else if (is_pressed(global.controls.up)) {
    direction = 90;
} else if (is_pressed(global.controls.down)) {
    direction = 270;
}

if (outside_view(0) || outside_room() || instance_place(x,y,objBlock) || instance_place(x,y,objBlockBullet) || instance_place(x,y,objBlockKiller)) {
    instance_destroy();
};