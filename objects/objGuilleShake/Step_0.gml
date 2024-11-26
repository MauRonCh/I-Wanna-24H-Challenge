shakeX = random(shakeEX * 2) - shakeEX + floor(objPlayer.x / 800) * 800;
shakeY = random(shakeEX * 2) - shakeEX + floor(objPlayer.y / 608) * 608;

camera_set_view_pos(view_camera[0], shakeX, shakeY);

if (shakeEX > 0) {
	shakeEX -= 0.5;
}

shakeEX = 5;