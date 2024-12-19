function outside_view(num) {
	var cam = camera_properties(num);
	
	return (x + (sprite_width - sprite_xoffset) <= cam.view_x || x - sprite_xoffset >= cam.view_x + cam.view_w || y + (sprite_height - sprite_yoffset) <= cam.view_y || y - sprite_yoffset >= cam.view_yh);
}

function frozen_player() {
	with (objPlayer) {
	    instance_create_layer(x, y, layer, objPlayerFrozenKing, {
			image_speed: 0,
			sprite_index,
			image_index,
			image_xscale: xscale,
		});
		
		with (instance_place(x, y, objSave)) {
			event_perform(ev_collision, objPlayer);
		}
		
	    instance_destroy();
	}
}

function unfrozen_player() {
	with (objPlayerFrozenKing) {
		instance_create_layer(x, y, layer, objPlayer, {
			sprite_index,
			image_index
		});
		
	    instance_destroy();
	}
}