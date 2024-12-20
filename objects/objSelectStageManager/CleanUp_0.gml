for (var i = 0; i < surfs_num; i++) {
	if (surface_exists(surfs_design[i])) {
		surface_free(surfs_design[i]);
	}
	
	if (surface_exists(surfs_show[i])) {
		surface_free(surfs_show[i]);
	}
}