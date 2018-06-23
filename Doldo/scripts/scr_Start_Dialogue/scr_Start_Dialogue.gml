/// @description Start Dialogue
/// @param dialogue script
/// @param line of dialogue

/// Create Dialogue Controller
if (!instance_exists(obj_dialogue_controller) )
{
	instance_create_depth(0, 0, 0, obj_dialogue_controller);
	obj_dialogue_controller.dialogue_lines = script_execute(argument[0]);
	obj_dialogue_controller.dialogue_line = (argument_count >= 2) ? argument[1] : 0;
	obj_dialogue_controller.fetch = true;
}