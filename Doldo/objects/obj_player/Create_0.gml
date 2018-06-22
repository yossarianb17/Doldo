enum states
{
	normal,
	interact,
	conversation
}


cooldown = 15;
move = 0;
enum dirs 
{
	right,
	left,
	up,
	down
}
dir = dirs.right;
spd = 1;
moving_animation = spr_DoldoWalkRight;
state = states.normal;


// DIALOGUE
dialogue = [];
dialogue_line = 0;

