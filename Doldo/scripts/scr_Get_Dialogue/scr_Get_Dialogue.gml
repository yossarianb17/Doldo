/// @description get dialogue pieces from object
/// @param start_line

if (fetch)
{
	dialogue_output = "";
	dialogue_output_speed = 0;
	var dialogue_data = dialogue_lines[dialogue_line];
	
	dialogue_text = dialogue_data[0];			
	dialogue_continue = dialogue_data[1];	
	dialogue_avatar = dialogue_data[2];		
	dialogue_left_facing = dialogue_data[3];
	dialogue_font = dialogue_data[4];
	fetch = false;
} else {
	//finish filling in text or skip to the next if player presses E
	if (argument[0]) {
		if (string_length(dialogue_text) > string_length(dialogue_output)){
			dialogue_output_speed = 1000;
		} else{
			if (dialogue_continue){
				dialogue_line += 1;
				fetch = true;
			}else
			instance_destroy();
			
		}
	}
	dialogue_output = string_copy(dialogue_text, 1, dialogue_output_speed);
	dialogue_output_speed += .8;
}