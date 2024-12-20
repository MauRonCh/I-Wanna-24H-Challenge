instance_destroy(other);
audio_play_sound(sndClear, 0, false);

part_particles_create(global.psys, x + 16 * image_xscale, y + 16 * image_yscale, global.warp_parts, 50); //change 30 to the number of particles you'd like to burst
instance_create_layer(0, 0, "Effects", objFadeClear);