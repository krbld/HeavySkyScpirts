/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5A01279E
/// @DnDArgument : "funcName" "boss01_spawner"
function boss01_spawner() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 3BA9EA19
	/// @DnDParent : 5A01279E
	/// @DnDArgument : "obj" "boss01"
	var l3BA9EA19_0 = false;
	l3BA9EA19_0 = instance_exists(boss01);
	if(l3BA9EA19_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54BE9C34
		/// @DnDParent : 3BA9EA19
		/// @DnDArgument : "var" "number_of_suicudel"
		/// @DnDArgument : "op" "2"
		if(number_of_suicudel > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 50D9DE80
			/// @DnDParent : 54BE9C34
			/// @DnDArgument : "xpos" "the_xl"
			/// @DnDArgument : "ypos" "the_yl"
			/// @DnDArgument : "var" "the_senemy"
			/// @DnDArgument : "objectid" "senemy01"
			the_senemy = instance_create_layer(the_xl, the_yl, "Instances", senemy01);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 0CF333CA
			/// @DnDApplyTo : the_senemy
			/// @DnDParent : 54BE9C34
			with(the_senemy) {
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5C2146E7
				/// @DnDParent : 0CF333CA
				/// @DnDArgument : "speed" "5"
				speed = 5;
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
				/// @DnDVersion : 1
				/// @DnDHash : 2A123BF7
				/// @DnDParent : 0CF333CA
				/// @DnDArgument : "x" "383"
				/// @DnDArgument : "y" "600"
				direction = point_direction(x, y, 383, 600);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 39D209C8
				/// @DnDInput : 2
				/// @DnDParent : 0CF333CA
				/// @DnDArgument : "expr" "400"
				/// @DnDArgument : "expr_1" "5"
				/// @DnDArgument : "var" "distance_to_player"
				/// @DnDArgument : "var_1" "suicide_speed"
				distance_to_player = 400;
				suicide_speed = 5;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50AD6C4C
			/// @DnDInput : 2
			/// @DnDParent : 54BE9C34
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "-192"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "the_xl"
			/// @DnDArgument : "var_1" "the_yl"
			the_xl += 0;
			the_yl += -192;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F0F92AF
			/// @DnDParent : 54BE9C34
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "number_of_suicudel"
			number_of_suicudel += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10E7C660
		/// @DnDParent : 3BA9EA19
		/// @DnDArgument : "var" "number_of_suicuder"
		/// @DnDArgument : "op" "2"
		if(number_of_suicuder > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1D03DEE1
			/// @DnDParent : 10E7C660
			/// @DnDArgument : "xpos" "the_xr"
			/// @DnDArgument : "ypos" "the_yr"
			/// @DnDArgument : "var" "the_senemy"
			/// @DnDArgument : "objectid" "senemy01"
			the_senemy = instance_create_layer(the_xr, the_yr, "Instances", senemy01);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 6E8C1222
			/// @DnDApplyTo : the_senemy
			/// @DnDParent : 10E7C660
			with(the_senemy) {
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 74000B41
				/// @DnDParent : 6E8C1222
				/// @DnDArgument : "speed" "5"
				speed = 5;
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
				/// @DnDVersion : 1
				/// @DnDHash : 57AEED4D
				/// @DnDParent : 6E8C1222
				/// @DnDArgument : "x" "383"
				/// @DnDArgument : "y" "600"
				direction = point_direction(x, y, 383, 600);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 68CFED6F
				/// @DnDInput : 2
				/// @DnDParent : 6E8C1222
				/// @DnDArgument : "expr" "400"
				/// @DnDArgument : "expr_1" "5"
				/// @DnDArgument : "var" "distance_to_player"
				/// @DnDArgument : "var_1" "suicide_speed"
				distance_to_player = 400;
				suicide_speed = 5;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 49F68CDC
			/// @DnDInput : 2
			/// @DnDParent : 10E7C660
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "-192"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "the_xr"
			/// @DnDArgument : "var_1" "the_yr"
			the_xr += 0;
			the_yr += -192;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A281A46
			/// @DnDParent : 10E7C660
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "number_of_suicuder"
			number_of_suicuder += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 35C3979F
		/// @DnDParent : 3BA9EA19
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 290C6CF5
			/// @DnDParent : 35C3979F
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "start_the_swarm"
			start_the_swarm = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2938630B
			/// @DnDInput : 4
			/// @DnDParent : 35C3979F
			/// @DnDArgument : "expr" "799"
			/// @DnDArgument : "expr_1" "-32"
			/// @DnDArgument : "expr_2" "-92"
			/// @DnDArgument : "var" "the_xr"
			/// @DnDArgument : "var_1" "the_xl"
			/// @DnDArgument : "var_2" "the_yr"
			/// @DnDArgument : "var_3" "the_yl"
			the_xr = 799;
			the_xl = -32;
			the_yr = -92;
			the_yl = 0;
		}
	}
}