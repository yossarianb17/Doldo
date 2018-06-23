///@description Player behaviour.

scr_GetInput();

// Interact
if ((keyinteract) && (move == 0) && (state == states.normal)) 
{
	scr_Interact();
	state = states.conversation;
}

// State Machine
switch (state)
{
	case states.normal:	scr_Movement(); break;
	case states.conversation: scr_Conversation(); break;
	case states.combat: break;
}

// Exit the game when exit key (esc) is pressed.
if (keyexit)
{
	game_end();
}