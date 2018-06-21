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
spd = 2;
moving_animation = spr_DoldoWalkRight;
state = states.normal;


// DIALOGUE
dialogue = [];
dialogue_line = 0;

d_obelisk_interact = 
scr_Add_Dialogue("what a strange stone!", true, spr_doldo_portrait);
scr_Add_Dialogue("well, you look pretty strange too!", false, spr_interlocutor, false, fnt_papyrus);
