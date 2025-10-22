/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 313F5F7E
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 02A97B51
/// @DnDArgument : "obj" "obj_controls"
/// @DnDSaveInfo : "obj" "obj_controls"
var l02A97B51_0 = false;l02A97B51_0 = instance_exists(obj_controls);if(l02A97B51_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22B5FD64
	/// @DnDApplyTo : obj_controls
	/// @DnDParent : 02A97B51
	with(obj_controls) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5A313438
else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0DC0EF4E
	/// @DnDParent : 5A313438
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height-100"
	/// @DnDArgument : "objectid" "obj_controls"
	/// @DnDSaveInfo : "objectid" "obj_controls"
	instance_create_layer(room_width/2, room_height-100, "Instances", obj_controls);}