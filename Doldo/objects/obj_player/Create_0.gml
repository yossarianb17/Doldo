enum states
{
	normal,
	interact,
	conversation,
	combat
}

enum dirs 
{
	right,
	left,
	up,
	down
}

move = 0;
dir = dirs.right;
spd = 1;
moving_animation = spr_DoldoWalkRight;
state = states.normal;
