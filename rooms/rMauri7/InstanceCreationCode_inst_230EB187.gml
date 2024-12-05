field = function() {
	add_trigger_key("key4", {
		x: new TriggerVariable(xstart + 32 * 14, 11),
		y: new TriggerVariable(ystart + 32 * 4, 5,,, function() {
			if (instance_exists(objPlayer)) return (x == xstart + 32 * 14);
		})
	})
}