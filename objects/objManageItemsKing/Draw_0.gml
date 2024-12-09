draw_set_alpha(1);
var cam = camera_properties(0);
var color = c_black;

for (i = 0; i < items; i++) {
    for (j = 0; j < 4; j++) {
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
		
		var separation = (544 / items) * i
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
            draw_sprite(item[i], 0, x1 + 45, y1 + 45);
        }
    }
};

for (k = 0; k < 4; k++) {
    if (k < 3) {
        color = make_color_hsv(80,240,255);
    } else {
        color = c_black;
    };
    outline = !(k div 3);
    draw_rectangle_color(cam.view_x + 128 + k, cam.view_y + 4 + k , cam.view_x + 672 - k, cam.view_y + 92 - k, color, color, color, color, outline);
};

draw_set_font(fExplainKing);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

if (!global.items.secrets[0]) {
    text[0] = "You don't have any items yet"
} else {
    text[0] = "Press X to change of object"
};

text[1] = $"With this item you can stop the time by pressing {control_bind(global.controls.misc)} key";

if (global.items.secrets[1]) {
    text[2] = "You can float for a few seconds with this item, just keep running and you won't fall";
} else {
    text[2] = "You don't have this item yet";
};

if (global.items.secrets[2]) {
    text[3] = "When you shoot you can control the direction of the bullet with the arrows"
} else {
    text[3] = "You don't have this item yet";
};

if (selected) {
    draw_text_ext(cam.view_x + 134, cam.view_y + 10, text[global.select + 1], -1, 544);
} else {
    draw_text_ext(cam.view_x + 134, cam.view_y + 10, text[0], -1, 544);
};