add_trigger_key("keyCherry", {
	attribute_event: new TriggerEvent(function() {
		if (!variable_instance_exists(id, "timer")) {
			timer = 70;
		}
		if (timer == 70) {
			instance_create_layer(x, y, "Fruits", objCherry, {
				vspeed: -4
			})
			timer = 0;
		}
		timer++;
	})
})