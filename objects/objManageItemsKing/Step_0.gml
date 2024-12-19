if (instance_exists(objPlayer) || instance_exists(objPlayerFrozenKing)) {
    if (selected) {
        if (is_pressed(global.controls.left)) {
            if (global.select > 0) {
                global.select--;
            }
        }
        
        if (is_pressed(global.controls.right)) {
            if (global.select < array_length(items) - 1) {
                global.select++;
            }
        }
        
        if (is_pressed(global.controls.misc)) {
            selected = false;
			unfrozen_player();
        }
    } else {
        if (global.items.secrets[0] || global.items.secrets[1] || global.items.secrets[2]) {
			if (is_pressed(global.controls.misc)) {
                if (instance_exists(objPlayer)) {
                    selected = true;
                    frozen_player();
                }
            }
            
            if (global.select == 0 && is_pressed(global.controls.up)) {
                time_stop();
			}
        }
    }
};

var cam = camera_properties(0);

instance_deactivate_region(cam.view_x, cam.view_y, cam.view_w, cam.view_h, false, true);
instance_activate_region(cam.view_x, cam.view_y, cam.view_w, cam.view_h, true);

instance_activate_object(objCamera);
instance_activate_object(objWorld);
instance_activate_object(objBackgroundKing);
instance_activate_object(objGameOver);
instance_activate_object(objTriggerController);
//instance_activate_object(objTileNormalKing);