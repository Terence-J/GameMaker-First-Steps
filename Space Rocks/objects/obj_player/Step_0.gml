/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 14BF2E6F
/// @DnDArgument : "key" "ord("W")"
var l14BF2E6F_0;l14BF2E6F_0 = keyboard_check(ord("W"));if (l14BF2E6F_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 7FA62FF8
	/// @DnDParent : 14BF2E6F
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 15992DF1
/// @DnDArgument : "key" "ord("S")"
var l15992DF1_0;l15992DF1_0 = keyboard_check(ord("S"));if (l15992DF1_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 0767D5ED
	/// @DnDParent : 15992DF1
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "-0.1"
	motion_add(image_angle, -0.1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4903C0AF
/// @DnDArgument : "key" "ord("A")"
var l4903C0AF_0;l4903C0AF_0 = keyboard_check(ord("A"));if (l4903C0AF_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A3DC9A1
	/// @DnDParent : 4903C0AF
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44D53241
/// @DnDArgument : "key" "ord("D")"
var l44D53241_0;l44D53241_0 = keyboard_check(ord("D"));if (l44D53241_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58AFCDEF
	/// @DnDParent : 44D53241
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 3BBB2700
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2F51DBFC
var l2F51DBFC_0;l2F51DBFC_0 = keyboard_check_pressed(vk_space);if (l2F51DBFC_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2DAAA853
	/// @DnDParent : 2F51DBFC
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);}