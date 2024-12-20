global.auto_save = true;

if (global.items.bosses[0] && global.items.bosses[1] && global.items.bosses[2]) {
    layer_set_visible("TYFP", true);
	instance_create_depth(0, 0, 0, objGameClear, {
		image_yscale: 17,
		image_xscale: 25
	});
}