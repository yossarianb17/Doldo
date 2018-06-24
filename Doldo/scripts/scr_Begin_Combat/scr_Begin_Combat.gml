/// @description Code run whenever a battle begins. Initializes the battle.
/// @param Encounter

/// Create Dialogue Controller
if (!instance_exists(obj_combatController) )
{
	instance_create_depth(0, 0, 0, obj_combatController);
	with (obj_combatController)
	{
		script_execute(argument[0]);
	}
}