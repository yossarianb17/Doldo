/// @description initialize the dialogue
// determine GUI resolution
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
enum dialogue_states
{
	world,
	combat
}
dialogue_state = dialogue_states.world;