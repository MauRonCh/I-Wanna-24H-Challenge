function play_music(music, loop) {
	if (!audio_is_playing(music)) {
	    audio_stop_sound(global.current_music);
		global.current_music = (!global.display.mute_music && music != -1) ? audio_play_sound(music, 0, loop) : music;
	}
}

function stop_music() {
	if (global.current_music != -1) {
	    audio_stop_sound(global.current_music);
	    global.current_music = -1;
	}
}

function get_music() {
	var music = -1;
	var loop = true;
	
	if (!instance_exists(objPlayMusic)) {
		switch (room) {
			case rTitle:
			case rFiles:
			case rOptions:
			    music = bgmGuyRock;
			    break;
			#region Guille Area
			case rGuilleS1:
			case rGuilleS1_2:
			case rGuilleS1_3:			
				music = bgmGuilleS1;
				break;
			case rGuilleS2:
			case rGuilleS2_2:
				music = bgmGuilleS2;
				break;
			case rGuilleS3:
				music = bgmGuilleS3;
				break;
			case rGuilleS3_2:
				music = bgmGuilleS3_2;
				break;
			case rGuilleS4:
			case rGuilleS4_2:
			case rGuilleS4_3:
			case rGuilleS4_4:
				music = bgmGuilleS4;
				break;
			case rGuilleBoss:
				music = bgmGuilleBoss;
				break;
			case rGuilleTransition1:		
			case rGuilleTransition2:
			case rGuilleBossPrev:
				music = bgmGuilleTransition;
				break;
			#endregion
			#region Mauri Area
			case rMauri1:
			case rMauri2:
			case rMauri3:
			case rMauri4:
			case rMauri5:
			case rMauri6:
			case rMauri7:
				music = bgmMauriStage;
				break;
			case rMauriPenalty:
				music = bgmMauriPenal;
				break;
			#endregion
			#region King Area
			case rKingStage:
				music = bgmKingStage;
				break;
			#endregion
		}
	} else {
		with (objPlayMusic) {
			music = self.music;
			loop = self.loop;
		}
	}

	if (music != -2) {
		play_music(music, loop);
	}
}

function toggle_music() {
	if (!global.display.mute_music) {
		get_music();  //Find and play the proper music for the current room
	} else { //Mute music
		audio_group_stop_all(audiogroup_BGM);
	}
}