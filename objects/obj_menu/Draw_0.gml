draw_set_font(fnt_menu)

for(var i = 0; i < last_choice; i++){
	if(i == current_choice){
		draw_set_color(c_yellow)
	} else {
		draw_set_color(c_black)
	}
	draw_text(x,y,text[i])
}