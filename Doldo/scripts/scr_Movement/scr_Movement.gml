if(keyright) && (move == 0)
{
	move = 16;
	dir = dirs.right;
	sprite_index = spr_DoldoWalkRight;
	
}

if(keyleft) && (move == 0)
{
	move = 16;
	dir = dirs.left;
	sprite_index = spr_DoldoWalkLeft;
	
}

if(keydown) && (move == 0)
{
	move = 16;
	dir = dirs.down;
}

if(keyup) && (move == 0)
{
	move = 16;
	dir = dirs.up;
}
if(move>0)
{
	sprite_index = moving_animation;
	switch(dir)
	{
		case dirs.right:
			x = x+spd;
			moving_animation = spr_DoldoWalkRight;
			break;
		case dirs.left:
			x = x-spd;
			moving_animation = spr_DoldoWalkLeft;
			break;
		case dirs.down:
			y += spd;
			moving_animation = spr_DoldoWalkDown
			break;
		case dirs.up:		
			y -= spd;
			moving_animation = spr_DoldoWalkUp
			break;
	}
	move = move - spd;
}
else{
	switch(moving_animation)
	{
		case spr_DoldoWalkRight: 
			sprite_index = spr_DoldoIdleRight;
			break;
		case spr_DoldoWalkLeft:
			sprite_index = spr_DoldoIdleLeft;
			break;
		case spr_DoldoWalkUp:
			sprite_index = spr_DoldoIdleUp;
			break;
		case spr_DoldoWalkDown:
			sprite_index = spr_DoldoIdleDown;
			break;
		default:
			sprite_index = spr_DoldoIdleRight;
			break;
	}
}