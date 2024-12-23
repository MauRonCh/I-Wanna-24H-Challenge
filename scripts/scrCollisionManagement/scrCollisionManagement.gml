function tangible_collision(obj) {
	return (obj.image_alpha == 1);
}

/*function oriental_collision(obj) {
	if (abs(global.grav) == 1) {
		return (abs(image_angle) mod 0 == 180);
		//return (abs(obj.image_angle) mod 0 == 360) ?? (abs(obj.image_angle) mod 0 == 180);
	} else if (abs(global.grav) == 2) {
		return (image_angle mod 0 == 90);
		//return (obj.image_angle mod 0 == 90) ?? (obj.image_angle mod 0 == 270);
	}
}*/

function dynamic_collision(setup = false, func = null, arg = null) {
	if (setup) {
	    xold = X;
	    yold = Y;
	} else {
	    //Split these into two with blocks so a user event 1 runs only after every single block's user event 0
	    with (objBlockDynamic) {
	        inst = other;
	        carry_instance();
	    }
		
	    with (objBlockDynamic) {
	        push_instance();
	    }

	    if (p_instance_place(0, 0, objBlock) != null && func != null) {
			func(arg);
	    }
    
	    //Set variables for next frame
	    xold = X;
	    yold = Y;
	}
}

function instance_place_check(x, y, obj, func = function(obj) { return true; } ) {
	var list = ds_list_create();
	var count = instance_place_list(x, y, obj, list, false);
	var found = null;

	for (var i = 0; i < count; i++) {
	    var current = list[| i];

	    if (current == noone || !func(current)) {
	        continue;
	    }

	    found = current;
	    break;
	}

	ds_list_destroy(list);
	return found;
}

function collision_point_check(x, y, obj, prec, notme, func = function(obj) { return true; }) {
	var list = ds_list_create();
	var count = collision_point_list(x, y, obj, prec, notme, list, false);
	var found = null;

	for (var i = 0; i < count; i++) {
	    var current = list[| i];

	    if (current == noone || !func(current)) {
	        continue;
	    }

	    found = current;
	    break;
	}

	ds_list_destroy(list);
	return found;
}

function collision_line_check(x1, y1, x2, y2, obj, prec, notme, func = function(obj) { return true; }) {
	var list = ds_list_create();
	var count = collision_line_list(x1, y1, x2, y2, obj, prec, notme, list, false);
	var found = null;

	for (var i = 0; i < count; i++) {
	    var current = list[| i];

	    if (current == noone || !func(current)) {
	        continue;
	    }

	    found = current;
	    break;
	}

	ds_list_destroy(list);
	return found;
}

function move_bounce() {
	//Simple block bounce that will preserve height
	
	//Detect horizontal collision
	if (instance_place_check(x + hspeed, y, objBlock, tangible_collision) != null || instance_place_check(x + hspeed, y, objBounceCherry, tangible_collision) != null) {
		x -= hspeed;
	    hspeed *= -1;
	} 
	
	//Detect vertical collision
	if (instance_place_check(x, y + vspeed, objBlock, tangible_collision) != null || instance_place_check(x, y + vspeed, objBounceCherry, tangible_collision) != null) {
		y -= vspeed;
		vspeed *= -1;
	}
	
	//Detect diagonal collision
	if (instance_place_check(x + hspeed, y + vspeed, objBlock, tangible_collision) != null || instance_place_check(x + hspeed, y + vspeed, objBounceCherry, tangible_collision) != null) {
		x -= hspeed;
		hspeed *= -1;
			
		y -= vspeed;
		vspeed *= -1;
	}
}