add_trigger_key("keyCherry", {
		attribute_event: new TriggerEvent(function() {
			if (!variable_instance_exists(id, "timer")) {
				timer = 100;
			}
			if (timer == 100) {
				instance_create_layer(x, y, "Fruits", objCherry, {
					hspeed: 2
				})
				timer = 0;
			}
			timer++;
		})
	})