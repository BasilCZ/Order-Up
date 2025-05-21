// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function idle(){
	switch(obj_player.last_sprite){
			case spr_player_down_walk:
				return spr_player_down_idle
			case spr_player_up_walk:
				return spr_player_up_idle
			case spr_player_left_walk:
				return spr_player_left_idle
			case spr_player_right_walk:
				return spr_player_right_idle
		}
	return spr_player_down_idle	
}