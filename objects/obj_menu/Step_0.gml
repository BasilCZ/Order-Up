if(obj_controls.back){
	if(obj_controls.up){
		current_choice+=1
		if(current_choice == last_choice + 1){
			current_choice = first_choice
		}
	}
	if (obj_controls.down){
		current_choice-=1
		if(current_choice == first_choice - 1){
			current_choice = last_choice
		}
	}
}