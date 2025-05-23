draw_self()
if(writing == true){
	draw_set_color(c_white)
	//draw_set_font(fnt_textbox)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	if(sprite[page] != noone){
		draw_sprite(sprite[page], 0, x_location+camera_get_view_width(view_camera[0])-100, y_location+600)
	}
	if(string_width_ext(text_draw[page], 40, 1230)>1230){
		var smaller = 1230
		var larger = string_width_ext(text_draw[page], 40, 111111230)
	} else {
		var smaller = string_width_ext(text_draw[page], 40, 11111230)
		var larger = 1230
	}
	if(height < 48 * ceil(smaller/larger)){
		height = 48 * ceil(smaller/larger)
	}
	if (width < string_width_ext(text_draw[page], 40, 1230)+40){
		width = string_width_ext(text_draw[page], 40, 1230)+40
	}
	if(width < 1230 and sprite[page] != noone){
		width = 1290
	}

	draw_sprite_stretched(spr_textbox_box, image_index,x_location+40,y_location+550,width,height)
	draw_sprite_stretched(spr_textbox_box, image_index, x_location + 40, y_location + 500, string_width_ext(name[page], 40, 1230)+40,48)
	draw_text(x_location+55, y_location+512, name[page])
	
	if(index < string_length(text[page])){
		index++
		text_draw[page] += string_char_at(text[page],index)
		
	}
	draw_text_ext(x_location+60,y_location+565,text_draw[page],40,1230)
}