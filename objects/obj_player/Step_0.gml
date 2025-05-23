x_speed = (obj_controls.right - obj_controls.left) * spd
y_speed = (obj_controls.down - obj_controls.up) * spd

if(place_meeting(x + x_speed, y, obj_collision)){
	x_speed = 0
}
if(place_meeting(x, y + y_speed, obj_collision)){
	y_speed = 0
}

if(can_move){
	if(obj_controls.run and (x_speed != 0 or y_speed != 0)){
		spd = 5
		image_speed = 2
	} else {
		spd = 3
		image_speed = 1
	}
	x+=x_speed
	y+=y_speed
	if(x_speed > 0){
		sprite_index = spr_player_right_walk
		last_sprite = spr_player_right_walk
	}
	if(x_speed < 0){
		sprite_index = spr_player_left_walk
		last_sprite = spr_player_left_walk
	}
	if(y_speed > 0){
		sprite_index = spr_player_down_walk
		last_sprite = spr_player_down_walk
	}
	if(y_speed < 0){
		sprite_index = spr_player_up_walk
		last_sprite = spr_player_up_walk
	}
	if(x_speed == 0 and y_speed == 0){
		sprite_index = idle()
	}
}