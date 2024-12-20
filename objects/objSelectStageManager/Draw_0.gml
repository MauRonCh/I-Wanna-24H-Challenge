for (var i = 0; i < surfs_num; i++) {
	if (!surface_exists(surfs_show[i])) {
		surfs_show[i] = surface_create(room_width, room_height);
	}
	
	surface_set_target(surfs_show[i]);
	draw_clear_alpha(c_black, 0);
	var rect_width = room_width / 3;
	var rect_height = room_height;
	var rect_x = rect_width * i;
	var rect_y = 0;
	
	draw_rectangle(rect_x, rect_y, rect_x + (rect_width - 1), rect_y + (rect_height - 1), false);
	
	for (var j = 0; j < rect_tri_number + 2; j++) {
        var tri_vertex_offset = (i % 2 != 0) ? rect_tri_offset : -rect_tri_offset;
        
		var tri_vertex_x1 = rect_x - 1;
		var tri_vertex_y1 = rect_y + tri_vertex_offset - rect_tri_height + rect_tri_height * j;
		
		var tri_vertex_x2 = tri_vertex_x1 - (rect_tri_width - 1);
		var tri_vertex_y2 = tri_vertex_y1 + (rect_tri_height / 2 - 1);
		
		var tri_vertex_x3 = tri_vertex_x1;
		var tri_vertex_y3 = tri_vertex_y1 + (rect_tri_height - 1);
        
		draw_triangle(tri_vertex_x1, tri_vertex_y1, tri_vertex_x2, tri_vertex_y2, tri_vertex_x3, tri_vertex_y3, false);
	}
	
	gpu_set_colorwriteenable(true, true, true, false);
	draw_surface(surfs_design[i], 0, 0);
	gpu_set_colorwriteenable(true, true, true, true);
	surface_reset_target();
	
	draw_surface(surfs_show[i], 0, 0);
}