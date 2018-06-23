/// @description get dialogue pieces from object
/// @param start_line

if (fetch)
{
	dialogue_output = "";
	dialogue_output_speed = 0;
	characters_printed = 0;
	previous_characters_printed = 0;
	var dialogue_data = dialogue_lines[dialogue_line];
	
	dialogue_text = dialogue_data[0];			
	dialogue_continue = dialogue_data[1];	
	dialogue_avatar = dialogue_data[2];		
	dialogue_left_facing = dialogue_data[3];
	dialogue_font = dialogue_data[4];
	dialogue_script = dialogue_data[5];
	dialogue_template = dialogue_data[6];
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
	dialogue_output_speed += .4;
	characters_printed = string_length(dialogue_output);
	
	//makes a sound play when and only when a new character is printed (excluding spaces)
	if (string_length(dialogue_text) >= string_length(dialogue_output) 
		&& (characters_printed > previous_characters_printed)
		&& (string_char_at(dialogue_output, string_length(dialogue_output)) != " ")) {
			audio_play_sound(snd_typewriterClick, 10, false);
			audio_sound_pitch(snd_typewriterClick, random_range(.9, 1.1))
		}
	previous_characters_printed = characters_printed;
	
	if (dialogue_script != "") script_execute(dialogue_script);
}