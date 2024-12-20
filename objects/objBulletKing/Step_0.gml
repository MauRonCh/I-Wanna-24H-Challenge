if (is_pressed(global.controls.right)) {
    direction = 0;
} else if (is_pressed(global.controls.left)) {
    direction = 180;
} else if (is_pressed(global.controls.up)) {
    direction = 90;
} else if (is_pressed(global.controls.down)) {
    direction = 270;
}

if (outside_view(0) || outside_room() || instance_place(x, y, objBlock) || instance_place(x, y, objWarpKing) || instance_place_check(x, y, objBlockBullet, function(x) { return (x.show_bullet); }) || instance_place(x, y, objBlockKiller)) {
    instance_destroy();
	audio_play_sound(sndDestroyBulletKing, 0, false);
	repeat(9) {
		instance_create_layer(x, y, "Effects", objBulletEffectKing, {
			direction: irandom_range(80,100),
			speed: random_range(3,5)
		})
	}
}