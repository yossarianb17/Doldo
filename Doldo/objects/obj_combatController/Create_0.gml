/// @description Saves the state of the player and the GUI's current state before switching both to the combat state.

player_return_state = scr_Get_State(obj_player);
gui_return_state = scr_Get_State(obj_GUIController);

scr_Set_State(obj_player, states.combat);
scr_Set_State(obj_GUIController, gui_states.off);