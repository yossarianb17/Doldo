scr_GetInput();
if (keyinteract) && (move == 0) state = states.interact;
switch (state)
{
	case states.normal:  scr_Movement(); break;
	
	case states.interact: scr_Interact();  break;
}

