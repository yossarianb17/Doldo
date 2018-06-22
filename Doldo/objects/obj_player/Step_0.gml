scr_GetInput();
if (keyinteract) && (move == 0) state = states.interact;
switch (state)
{
	case states.normal:  scr_Movement(); break;
	
	case states.interact: scr_Interact();  break;
	
	case states.conversation: scr_Conversation(); break;
	
	case states.combat: break;
}

