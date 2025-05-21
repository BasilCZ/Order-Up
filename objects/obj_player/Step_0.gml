if(obj_controls.run){
	spd = 5
} else {
	spd = 3
}

x_speed = (obj_controls.right - obj_controls.left) * spd
y_speed = (obj_controls.down - obj_controls.up) * spd

if(place_meeting(x + x_speed, y, obj_collision)){
	x_speed = 0
}
if(place_meeting(x, y + y_speed, obj_collision)){
	y_speed = 0
}

if(can_move){
	if(x_speed > 0){
		sprite_index = spr_player_right_walk
	}
	if(x_speed < 0){
		sprite_index = spr_player_left_walk
	}
	if(y_speed > 0){
		sprite_index = spr_player_down_walk
	}
	if(y_speed < 0){
		sprite_index = spr_player_up_walk
	}
	if(x_speed == 0 and y_speed == 0){
		image_index = 0
		switch(sprite_index){
			case spr_player_down_walk:
				sprite_index = spr_player_down_idle
				break
			case spr_player_up_walk:
				sprite_index = spr_player_up_idle
				break
			case spr_player_left_walk:
				sprite_index = spr_player_left_idle
				break
			case spr_player_right_walk:
				sprite_index = spr_player_right_idle
				break
		}
	}
}