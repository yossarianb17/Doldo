/// @description initialize the dialogue
// determine GUI resolution
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
enum dialogue_templates
{
	world,
	combat
}
dialogue_template = dialogue_templates.world;