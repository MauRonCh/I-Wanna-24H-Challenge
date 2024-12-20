if (alp && image_alpha <= 0.3) {
	image_alpha += 0.005;
} else image_alpha -= 0.005;

if (image_alpha >= 0.3) alp = false;
if (image_alpha < 0) alp = true;