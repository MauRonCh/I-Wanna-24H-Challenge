instance_create_layer(384, 432, "Instances", objWarpClear, {
	sprite_index: sprGuilleWarp
})

objPlayer.frozen = false;
audio_play_sound(sndDeath, 0, false);
global.items.bosses[0] = true;