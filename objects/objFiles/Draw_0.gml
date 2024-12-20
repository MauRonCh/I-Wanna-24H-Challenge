for (var i = 0; i < global.total_saves; i++) {
	var data = datas[i];
    draw_sprite(sprFilesBar, 0, x - 32, y + spacing * i);
	
	//Name
    draw_set_alpha(1);
	draw_set_font(fntMenu);
    draw_set_color(c_black);
	draw_set_halign(fa_left);
    draw_text(x, y + spacing * i + 24, $"Data{i + 1}");
    
	//Difficulty
	draw_set_font(fntMenu2);
	draw_set_halign(fa_center);
    
    var draw_diff = data.difficulty;
    
    if (menu == 1 && select[0] == i) {
        draw_diff = $"< {global.difficulties[select[menu]]} >";
    }
    
    draw_text(x + 70, y + 70 + spacing * i, draw_diff);
    
	//Deaths and Time
	draw_set_font(fntMenu3);
    draw_set_halign(fa_left);
    draw_text(x + 400, y + 78 - 48 + spacing * i, $"Deaths: {data.deaths}");
    draw_text(x + 400, y + 100 - 36 + spacing * i, $"Time: {formatted_time(data.time)}");
      
	//Clear
    if (data.clear) {
		draw_set_font(fntMenu4);
        draw_set_halign(fa_center);
        draw_text(x + 272, y + 36 + spacing * i, "Clear!");
    }
        
    if (select[0] == i) {
        draw_sprite(sprCherry, 0, 52, y + 60 + spacing * i);
        draw_sprite(sprCherry, 0, room_width - 56, y + 60 + spacing * i);
    }
}

draw_set_font(fntMenu3);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(225, 550, "[Z] Back");
draw_text(380, 550, "[Enter] Options");
draw_text(560, 550, "[Shift] Accept");
draw_set_halign(fa_left);