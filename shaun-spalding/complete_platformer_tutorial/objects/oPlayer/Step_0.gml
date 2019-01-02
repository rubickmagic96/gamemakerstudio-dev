/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5614447C
/// @DnDInput : 3
/// @DnDArgument : "expr" "keyboard_check(vk_left)"
/// @DnDArgument : "expr_1" "keyboard_check(vk_right)"
/// @DnDArgument : "expr_2" "keyboard_check_pressed(vk_space)"
/// @DnDArgument : "var" "key_left"
/// @DnDArgument : "var_1" "key_right"
/// @DnDArgument : "var_2" "key_jump"
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 362BE55F
/// @DnDArgument : "var" "move"
/// @DnDArgument : "value" "key_right - key_left"
var move = key_right - key_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0287B2BD
/// @DnDArgument : "expr" "move * walksp"
/// @DnDArgument : "var" "hsp"
hsp = move * walksp;

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 1F34BEA2
/// @DnDArgument : "var" "place_meeting(x+hsp, y, oWall)"
if(place_meeting(x+hsp, y, oWall) == undefined)
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 663C53AC
	/// @DnDParent : 1F34BEA2
	/// @DnDArgument : "var" "place_meeting(x+sign(hsp), y, oWall)"
	/// @DnDArgument : "not" "1"
	while (!(place_meeting(x+sign(hsp), y, oWall) == 0)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35284C2C
		/// @DnDParent : 663C53AC
		/// @DnDArgument : "expr" "x + sign(hsp)"
		/// @DnDArgument : "var" "x"
		x = x + sign(hsp);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CA1A200
	/// @DnDParent : 1F34BEA2
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E0B6743
/// @DnDArgument : "expr" "x + hsp"
/// @DnDArgument : "var" "x"
x = x + hsp;