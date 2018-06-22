/// @description draw dialogue box
switch dialogue_state
{
	case dialogue_states.world:
		if (!fetch)
		{
			draw_set_font(dialogue_font);
	
			var x_offset = 0;
			if (dialogue_avatar != ""){
				if (dialogue_left_facing){
					x_offset = -32;
				} else
					x_offset = 32;
			}
			var x_pos = camera_get_view_width( view_camera[0]) / 2 - 96 - x_offset;
			var y_pos = camera_get_view_height( view_camera[0]) - 100;
	
			draw_set_halign(fa_left); //aligns text to left
			draw_sprite(spr_dialogue_box, 0, x_pos, y_pos);
			draw_text_ext(x_pos + 10, y_pos + 6, string_hash_to_newline(dialogue_output), 16, 175);
	
	
			// Draw avatar if appropriate
			if (dialogue_avatar != "")
			{
				if (dialogue_left_facing){
					draw_sprite(spr_portrait_box, 1, x_pos - 61, y_pos);
					draw_sprite(dialogue_avatar, 0, x_pos - 58, y_pos +5);
				} else{
					draw_sprite(spr_portrait_box, 0, x_pos + 186, y_pos);
					draw_sprite_ext(dialogue_avatar, 0, x_pos + 248, y_pos+4, -1, 1, 0, c_white, 1);
				}
			}
		}
		break;
}