globalvar screen_width;
globalvar screen_height;
screen_width = camera_get_view_width(view_camera[0]); 
screen_height = camera_get_view_height(view_camera[0]);

instance_create_depth(0,0,0,obj_GUIController);