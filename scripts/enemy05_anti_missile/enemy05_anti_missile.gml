/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 67D36D99
/// @DnDArgument : "funcName" "enemy05_anti_missile"
function enemy05_anti_missile() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7318A182
	/// @DnDParent : 67D36D99
	/// @DnDArgument : "obj" "drone_missile"
	var l7318A182_0 = false;
	l7318A182_0 = instance_exists(drone_missile);
	if(l7318A182_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BCECDC0
		/// @DnDParent : 7318A182
		/// @DnDArgument : "var" "anti_missile_cooldown"
		/// @DnDArgument : "op" "3"
		if(anti_missile_cooldown <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 10C07256
			/// @DnDParent : 7BCECDC0
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "anti_missile"
			instance_create_layer(x + 0, y + 0, "Instances", anti_missile);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 476B793D
			/// @DnDParent : 7BCECDC0
			/// @DnDArgument : "expr" "120"
			/// @DnDArgument : "var" "anti_missile_cooldown"
			anti_missile_cooldown = 120;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B51E3D3
		/// @DnDParent : 7318A182
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "anti_missile_cooldown"
		anti_missile_cooldown += -1;
	}
}