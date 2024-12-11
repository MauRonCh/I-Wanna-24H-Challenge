with (objPlayerFrozenKing) {
    instance_create_layer(x, y, layer, objPlayer);
    instance_destroy();
};

if (objBackgroundLetterKing.yspeed > 0) {
	if (instance_exists(objPlayer)) {
		instance_create_layer(objPlayer.x, objPlayer.y, "Effects", objClockParticleKing);
	}
	
    with (objBackgroundLetterKing) {
		alarm[0] = 1;
	}
    with (objBackgroundKing) {
		alarm[0] = 0;
	}
	with (objGreenCherryKing) {
		alarm[0] = 1;
	}
	with (objSpikeDownGKing) {
		alarm[0] = 1;
	}
    
    global.time_stopped = true;
} else {
	with (objClockParticleKing) {
	    alpha = false;
	    alpha2 = true;
	}
    instance_activate_object(objBackgroundKing);
    with (objBackgroundLetterKing) {
		alarm[1] = 1;
	}
    with (objBackgroundKing) {
		alarm[0] = 1;
	}
	with (objGreenCherryKing) {
		alarm[1] = 1;
	}
	with (objSpikeDownGKing) {
		alarm[1] = 1;
	}
    
    global.time_stopped = false;
};