/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 011C08E6
/// @DnDArgument : "var" "other.collidable"
/// @DnDArgument : "value" "true"
if(other.collidable == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36C89E62
	/// @DnDParent : 011C08E6
	/// @DnDArgument : "var" "move"
	move = 0;

	/// @DnDAction : YoYo Games.Movement.Snap_Position
	/// @DnDVersion : 1
	/// @DnDHash : 53FCE762
	/// @DnDParent : 011C08E6
	/// @DnDArgument : "xsnap" "16"
	/// @DnDArgument : "ysnap" "16"
	move_snap(16, 16);
}