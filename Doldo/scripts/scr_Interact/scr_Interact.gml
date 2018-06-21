x_rel = 0;
y_rel = 0;

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

with (inst)
{
	script_execute(interaction)
}
state = states.normal;