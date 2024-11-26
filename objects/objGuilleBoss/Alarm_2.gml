for (i = 0; i < 360; i += 30) {
	instance_create_depth(x, y, depth - 1, objGuilleAttack1, {
		speed: 3,
		direction: random(360) 
	})
};

alarm[2] = 80;