/// @description Saves the state of the player and the GUI's current state before switching both to the combat state.

enum combat_states
{
	dialogue,
	raise_weapons,
	fight
}

state = combat_states.dialogue;

if (instance_exists(obj_dialogue_controller))
	state = combat_states.dialogue;
else
	state = combat_states.raise_weapons;

// Save previous Player and GUI states.
player_return_state = scr_Get_State(obj_player);
gui_return_state = scr_Get_State(obj_GUIController);

// Set Player and GUI states ready for combat.
scr_Set_State(obj_player, states.combat);
scr_Set_State(obj_GUIController, gui_states.off);