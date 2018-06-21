/// @description Start Dialogue
/// @param object
/// @param dialogue_line

/// Create Dialogue Controller
if (!instance_exists(obj_dialogue_controller) )
{
	instance_create_depth(0, 0, 0, obj_dialogue_controller);
	obj_dialogue_controller.dialogue_lines = argument[0].dialogue;
	obj_dialogue_controller.dialogue_line = argument[1];
	obj_dialogue_controller.fetch = true;
}