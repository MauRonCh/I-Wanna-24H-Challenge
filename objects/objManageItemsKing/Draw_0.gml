draw_set_alpha(1);
var cam = camera_properties(0);
var color = c_black;
var outline = true;

for (var i = 0; i < array_length(items); i++) {
    for (var j = 0; j < 4; j++) {
        switch (j) {
            case 0:
			case 2:
                color = make_color_hsv(80, 240, 255);
                outline = true;
                break;
				
            case 1:
                color = c_black;
                outline = true;
                break;
				
            default:
                color = c_black;
                outline = false;
                break;
        };
		
		var separation = (544 / array_length(items)) * i
		var x1 = cam.view_x + 175 + separation;
		var y1 = cam.view_y + 516;
		var x2 = cam.view_x + 265 + separation;
		var y2 = cam.view_y + 606;
		var color_select = make_color_rgb(255, 242, 0);
		var color_chosen = (global.select != i || j == 1 || j == 3) ? color : color_select;

		draw_set_color(color_chosen);
		draw_rectangle(x1 + j, y1 + j, x2 - j, y2 - j, outline);
		
        draw_set_font(fNotItemKing);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(c_gray);
        
		if (!global.items.secrets[i]) {
            draw_text(x1 + 45, y1 + 45, "?");
        } else {
            draw_sprite(items[i], 0, x1 + 45, y1 + 45);
        }
    }
}

for (var k = 0; k < 4; k++) {
    if (k < 3) {
        color = make_color_hsv(80,240,255);
    } else {
        color = c_black;
    }
	
    outline = !(k div 3);
    draw_rectangle_color(cam.view_x + 128 + k, cam.view_y + 4 + k , cam.view_x + 672 - k, cam.view_y + 92 - k, color, color, color, color, outline);
}

draw_set_font(fExplainKing);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var current_text = texts[1];

if (!global.items.secrets[0] && !global.items.secrets[1] && !global.items.secrets[2]) {
	current_text = texts[0];
}

if (selected) {
	current_text = texts[2 + global.select];
}

draw_text_ext(cam.view_x + 134, cam.view_y + 10, current_text, -1, 544);