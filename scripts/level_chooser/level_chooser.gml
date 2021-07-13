/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 60B43121
/// @DnDArgument : "funcName" "level_chooser"
/// @DnDArgument : "arg" "argument0"
function level_chooser(argument0) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44B5A519
	/// @DnDParent : 60B43121
	/// @DnDArgument : "expr" "argument0"
	/// @DnDArgument : "var" "global.the_room"
	global.the_room = argument0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BC66FEA
	/// @DnDParent : 60B43121
	/// @DnDArgument : "objectid" "global.the_room"
	instance_create_layer(0, 0, "Instances", global.the_room);
}