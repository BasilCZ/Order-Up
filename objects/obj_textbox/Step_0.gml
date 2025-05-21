x_location = camera_get_view_x(view_camera[0])
y_location = camera_get_view_y(view_camera[0])

var confirm_key = obj_controls.confirm
var skip_key = obj_controls.run

if(writing == true){
	//Goes to the next page
	if(confirm_key == true and text[page] == text_draw[page]){
		page++
		index = 0
		text_draw[page] = ""
	}
	//Skips the text
	if(skip_key == true and array_length(text)<=page){
		index = string_length(text[page])
		text_draw[page] = text[page]
	}
	//Plays the talking sound if the text is still being written
	/*if(page < array_length(text) and string_length(text[page]) > index){
		audio_play_sound(snd_talking,1,false)
	}*/
}
//Starts the textbox
if(place_meeting(x,y,obj_player) and confirm_key == true){
	obj_player.can_move = false
	obj_player.image_speed = 0
	obj_player.image_index = 0
	obj_player.sprite_index = idle()
	if(page < array_length(text)){
		writing = true
	} else {
		//Ends the textbox
		text_draw[0] = ""
		index = 0
		page = 0
		writing = false
		obj_player.can_move = true
		obj_player.image_speed = 1
		obj_player.image_index = 0
	}
}