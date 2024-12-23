function player_jump() {
	if (global.forms.vkid == 0) {
		#region Jumping
		var platform = p_instance_place(0, sign(global.grav), objPlatform);
		
		if (jump_total > 0 && (on_block != null || (platform != null && platform.visible) || on_platform || p_instance_place(0, sign(global.grav), objWater1) != null || on_ladder || hovering)) {
			p_vspd(-(jump_height[0] * sign(global.grav)));
			on_ladder = false;
			player_sprite("Jump");
			reset_jumps();
			audio_play_sound(sndJump, 0, false);
		} else if (jump_left > 0 || p_instance_place(0, global.grav, objWater2) != null || jump_total == -1) {
			jump_velocity = 1;
			
			package_refrenture("player prejump");
			package_wetventure("player prejump");
				
			p_vspd(-(jump_height[1] * sign(global.grav)) * jump_velocity);
			package_refrenture("player postjump");
			player_sprite("Jump");
			
			if (p_instance_place(0, sign(global.grav), objWater3) == null) {
				if (jump_left > 0) {
					jump_left--;
				}
			} else {
				reset_jumps();
			}
			
			audio_play_sound(sndDoubleJump, 0, false);
		}
		#endregion
	} else {
		#region Flipping
		if (!global.forms.lunarkid) {
			if (on_block != null) {
				if (global.forms.vkid == 1) {
					flip_grav();
				} else if (global.forms.vkid == 2) {
					turn_grav();
				}
				
				p_vspd(jump_height[0] * sign(global.grav));
				var sound = (sign(global.grav) == -1) ? sndVFlipDown : sndVFlipUp;
				audio_play_sound(sound, 0, false);
			}
		} else {
			gravity_direction += 180 / global.forms.vkid;
		}
		#endregion
	}
}

function player_fall() {
	if (Vspd * sign(global.grav) < 0) {
		p_vspd(Vspd * 0.45);
	}
}

function reset_jumps() {
	with (objPlayer) {
		jump_left = jump_total - 1;
	}
}

function player_shoot() {
	var condition = global.items.secrets[2] && global.select == 2 && room == rKingStage;
	var bullet_max = (condition) ? 1 : 4;
	var bullet_object = (condition) ? objBulletKing : objBullet;
	var shoot_sound = (condition) ? sndShootKing : sndShoot;
	
	if (global.forms.telekid) {
		bullet_max = 1;
	}

	if (instance_number(objBullet) < bullet_max || instance_number(objBulletKing) < bullet_max) {
		instance_create_layer(x, y, "Player", bullet_object);
		audio_play_sound(shoot_sound, 0, false);
	}
}

function player_sprite(action = null) {
	if (global.forms.dotkid) {
		sprite_index = get_skin_sprite("Dotkid");
	} else if (global.forms.lunarkid) {
		sprite_index = get_skin_sprite("Lunarkid");
	} else if (global.forms.linekid) {
		sprite_index = get_skin_sprite("Linekid");
	} else {
		sprite_index = get_skin_sprite(action);
	}
}

function get_skin_sprite(action) {
	if (!variable_struct_exists(skins, skin)) {
		return sprite_index;
	}
	
	var sprites = skins[$ skin];
	
	if (!variable_struct_exists(sprites, action)) {
		return sprite_index;
	}
	
	return sprites[$ action];
}

function kill_player() {
	if (instance_exists(objPlayer)) {
	    if (!global.debug_god_mode) {
	        with (objPlayer) {
				instance_create_layer(x, y, "Player", objBloodEmitter);
	            instance_destroy();
	        }
            
			instance_create_layer(0, 0, "Instances", objGameOver);
	        global.deaths++;
			audio_play_sound(sndDeath, 0, false);
			
			if (global.death_music) {
	            audio_pause_sound(global.current_music);
				if (string_count("Guille", room_get_name(room)) >= 1) {
					audio_play_sound(bgmGuilleGameOver, 0, false, 0.8);
				} else {
					audio_play_sound(bgmGameOver, 0, false, 0.5);
				}
	        }
	    } else if (objPlayer.hit == 0) {
			with (objPlayer) {
				hit = global.debug_hit_time;
				hit_x = x;
				hit_y = y;
			}
			
			global.deaths++;
			audio_play_sound(sndDeath, 0, false);
		}
	}
}

function outside_room() {
	if (!instance_exists(objPlayer)) {
	    return false;
	}
	
	return (objPlayer.x < 0 || objPlayer.x > room_width || objPlayer.y < 0 || objPlayer.y > room_height);
}

function set_mask() {
	if (global.forms.dotkid || global.forms.lunarkid || global.forms.linekid) {
		mask_index = sprite_index;
	} else {
		mask_index = sprPlayerMask;
	}
}

function flip_grav(grav = null, jump = true) {
    if (instance_exists(objPlayer)) {
        global.grav = (grav == null) ? global.grav * -1 : grav;

        if (!global.forms.lunarkid) {
            with (objPlayer) {
                set_mask();
                change_angle();
                p_vspd(0);
                
                var amount_y = 0;
                
                if (p_collision_line(BBOX_LEFT, BBOX_TOP, BBOX_RIGHT, BBOX_TOP, objBlock, true, true, tangible_collision) != null) {
                    amount_y = (sign(global.grav) == 1) ? 1 : -1;
                } else if  (p_collision_line(BBOX_LEFT, BBOX_BOTTOM, BBOX_RIGHT, BBOX_TOP, objBlock, true, true, tangible_collision) != null) {
                    amount_y = (sign(global.grav) == 1) ? -1 : 1;
                }
                
                if (amount_y != 0) {
                    while (instance_place_check(x, y, objBlock, tangible_collision) != null) {
                        p_y(Y + amount_y);
                    }
                }
                
                var amount_x = 0;
                
                if (p_collision_line(BBOX_LEFT, BBOX_TOP, BBOX_LEFT, BBOX_BOTTOM, objBlock, true, true, tangible_collision) != null) {
                    amount_x = (sign(global.grav) == 1) ? 1 : -1;
                    
                    if (abs(global.grav) == 2) {
                        amount_x *= -1;
                    }
                } else if (p_collision_line(BBOX_RIGHT, BBOX_TOP, BBOX_RIGHT, BBOX_BOTTOM, objBlock, true, true, tangible_collision) != null) {
                    amount_x = (sign(global.grav) == 1) ? -1 : 1;
                    
                    if (abs(global.grav) == 2) {
                        amount_x *= -1;
                    }
                }
                
                if (amount_x != 0) {
                    while (instance_place_check(x, y, objBlock, tangible_collision) != null) {
                        p_x(X + amount_x);
                    }
                }
            }
        }

        if (jump) {
            reset_jumps();
        }
    }
}

function turn_grav(jump = true) {
	if (instance_exists(objPlayer)) {
		global.grav = (abs(global.grav) == 1) ? -(2 * objPlayer.xscale) : objPlayer.xscale;
	}
}

function check_vines(on_vine, dir_left_pressed, dir_right_pressed) {
	if (on_block || on_vine == null || on_vine.tangible == 0) {
		return;
	}
	
	xscale = on_vine.tangible;
				
	if (on_vine.object_index != objIceVine) {
		if (on_vine.object_index != objStickyVine) {
			var vine_speed = (on_vine.object_index == objRiseVine) ? -1 : 1;
			p_vspd((2 * vine_speed) * sign(global.grav));
		} else {
			p_vspd(0);
			vine_mod.stick = true;
		}
	} 
				
	player_sprite("Slide");
	var check_left_pressed = dir_left_pressed;
	var check_right_pressed = dir_right_pressed;
	
	if (global.grav == -2) {
		check_left_pressed = dir_right_pressed;
		check_right_pressed = dir_left_pressed;
	}
    
	if ((on_vine.tangible == 1 && check_right_pressed) || (on_vine.tangible == -1 && check_left_pressed)) {
		var check_tangible = (abs(global.grav) == 1) ? on_vine.tangible : -on_vine.tangible;
		
		if (is_held(global.controls.jump)) {
			p_hspd((check_tangible == 1) ? 15 : -15);
						
			if (on_vine.object_index == objFlipVine) {
				flip_grav(, false);
			}
						
			if (on_vine.object_index == objTurnVine) {
				turn_grav();
			}
						
			p_vspd(-9 * sign(global.grav));
			player_sprite("Jump");
			audio_play_sound(sndVine, 0, false);
						
			if (on_vine.object_index == objTwinWhiteVine || on_vine.object_index == objTwinBlackVine) {
				vine_mod.twin ^= true;
			}
		} else {
			p_hspd((check_tangible == 1) ? 3 : -3);
			player_sprite("Fall");
		}
	}
				
	if (on_vine.object_index == objFireVine) {
		vine_mod.fire = true;
	}
				
	if (on_vine.object_index == objLowGravVine) {
		vine_mod.lowgrav = true;
	}
}