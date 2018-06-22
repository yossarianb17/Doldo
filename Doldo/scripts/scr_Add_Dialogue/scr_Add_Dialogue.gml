/// @description add lines of dialogue
/// @param Dialogue
/// @param Continue
/// @param Avatar
/// @param Left_Facing
/// @param Font

// adds default values to add, takes arguments if you give them.
var dialogue_part = [];
var dialogue_text = "";				if (argument_count >=1) dialogue_text = argument[0];
var dialogue_continue = false;		if (argument_count >=2) dialogue_continue = argument[1];
var dialogue_avatar = "";			if (argument_count >=3) dialogue_avatar = argument[2];
var dialogue_left_facing = true;	if (argument_count >=4) dialogue_left_facing = argument[3];
var dialogue_font = fnt_arial;		if (argument_count >=5) dialogue_font = argument[4];

dialogue_part[0] = dialogue_text;
dialogue_part[1] = dialogue_continue;
dialogue_part[2] = dialogue_avatar;
dialogue_part[3] = dialogue_left_facing;
dialogue_part[4] = dialogue_font;

dialogue[dialogue_line] = dialogue_part;
dialogue_line += 1;

return dialogue_line - 1;