a = instance_create_layer(384, 432, "Instances", objWarp)
a.room_to = rSelectArea;

objPlayer.frozen = false;
audio_play_sound(sndDeath, 0, false);