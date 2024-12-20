draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(global.items.bosses[num] ? c_yellow : color);

draw_text(x, y, global.items.bosses[num] ? "Clear" : name);

draw_set_halign(fa_left);
draw_set_valign(fa_top);