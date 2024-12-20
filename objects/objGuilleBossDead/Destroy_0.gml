a = instance_create_layer(384, 432, "Instances", objWarp)
a.room_to = rSelectStage;

objPlayer.frozen = false;
audio_play_sound(sndDeath, 0, false);