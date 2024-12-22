selected = false;

items = [
	sprIconClockKing,
	sprIconBootsKing,
	sprIconBulletKing
];

texts = [
	"You don't have any items yet.",
	"You don't have that item yet.",
	$"Press {control_bind(global.controls.misc)} to change object.",
	
	$"This clock stops time by pressing {control_bind(global.controls.up)}.",
	"Float in midair with these boots for a few seconds, jumping cancels the effect.",
	"Your bullets can be controlled with movement, if it hits a wall it gets destroyed."
];

function time_stop() {
	if (!instance_exists(objPlayer)) {
		return;
	}

	if (!global.time_stopped) {
		instance_create_layer(objPlayer.x, objPlayer.y, "Effects", objClockParticleKing);
	
	    with (objBackgroundLetterKing) {
			alarm[0] = 1;
		}
	
	    with (objBackgroundKing) {
			alarm[0] = 0;
		}
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
	}
	
	global.time_stopped ^= true;
	audio_play_sound(sndStoppedTime, 0, false);
}