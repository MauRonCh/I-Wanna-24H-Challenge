for (i = 0; i < 80; i += 4) {
	instance_create_depth(x, y, depth - 1, objGuilleAttack1, {
		speed: 3 + random(2),
		direction: random(360)
	});
}