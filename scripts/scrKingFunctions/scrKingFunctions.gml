function outside_view(num) {
	var cam = camera_properties(num);
	
	return (x + (sprite_width - sprite_xoffset) <= cam.view_x || x - sprite_xoffset >= cam.view_x + cam.view_w || y + (sprite_height - sprite_yoffset) <= cam.view_y || y - sprite_yoffset >= cam.view_yh);
}

function frozen_player() {
	with (objPlayer) {
	    frozen = true;
	    instance_create_layer(x, y, layer, objPlayerFrozenKing, {
			image_speed: 0,
			sprite_index: sprite_index,
			image_index: image_index,
			image_xscale: image_xscale,
			image_yscale: image_yscale
		})
	    instance_destroy();
	};
}