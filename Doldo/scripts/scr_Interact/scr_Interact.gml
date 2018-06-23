var x_rel = 0;
var y_rel = 0;

switch dir
{
	case dirs.right:
		x_rel = 16;
		y_rel = 0;
		break;
	case dirs.left:
		x_rel = -16;
		y_rel = 0;
		break;
	case dirs.up:
		x_rel = 0;
		y_rel = -16;
		break;
	case dirs.down:
		x_rel = 0;
		y_rel = 16;
		break;
}

inst = instance_place(x + x_rel, y + y_rel, obj_interactable)

// If no instance found. Return.
if (!inst) 
{
	state = states.normal;
	return;
}

// Execute the interaction_script on the instance of the object with arguments defined in arg.
// This supports up to two arguments in arg. Can be expanded.
with (inst)
{
	if (array_length_1d(arg) == 0) script_execute(interaction_script);
	if (array_length_1d(arg) == 1) script_execute(interaction_script, arg[0]);
	if (array_length_1d(arg) == 2) script_execute(interaction_script, arg[0], arg[1]);
}