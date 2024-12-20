surfs_num = 3;
surfs_design = array_create(surfs_num, noone);
surfs_design_start = function(index) {
	if (!surface_exists(surfs_design[index])) {
		surfs_design[index] = surface_create(room_width, room_height);
	}
	
	surface_set_target(surfs_design[index]);
    gpu_set_blendmode_ext_sepalpha(bm_src_alpha, bm_inv_src_alpha, bm_one, bm_one);
};

surfs_design_end = function(index) {
    with (objPlayer) {
        var skin_name = sprite_get_name(sprite_index);
        
        switch (index) {
            case 0: skin_name += "Guille"; break;
            case 1: skin_name += ""; break;
            case 2: skin_name += "King"; break;
        }
        
        var skin_sprite = asset_get_index(skin_name);
        draw_sprite_ext(skin_sprite, image_index, x, y, image_xscale * xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
}

surfs_show = array_create(surfs_num, noone);

layer_script_begin("Background_Guille", method(id, function() {
	surfs_design_start(0);
}));

layer_script_end("Tiles_Guille", method(id, function() {
    surfs_design_end(0);
}));

layer_script_begin("Background_Mauri", method(id, function() {
	surfs_design_start(1);
}));

layer_script_end("End_Mauri", method(id, function() {
    surfs_design_end(1);
}));

layer_script_begin("Background_King", method(id, function() {
	surfs_design_start(2);
}));

layer_script_end($"Tiles_King", method(id, function() {
    surfs_design_end(2);
}));

rect_tri_number = 10;
rect_tri_width = 30;
rect_tri_height = room_height / rect_tri_number;
rect_tri_offset = 0;