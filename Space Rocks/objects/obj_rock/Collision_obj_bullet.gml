/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0E1B2AC9
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.var_points"
obj_game.var_points += 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 397591C6
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 326EE0E1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 300A097E
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F3D0A1A
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 67BAB4F4
	/// @DnDParent : 5F3D0A1A
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7D8E5DFE
	/// @DnDParent : 5F3D0A1A
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3F426C0B
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BD92019
	/// @DnDParent : 3F426C0B
	/// @DnDArgument : "var" "instance_number(obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(obj_rock) < 12){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0D2B3B75
		/// @DnDParent : 3BD92019
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28E94148
		/// @DnDParent : 3BD92019
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2826124C
	/// @DnDParent : 3F426C0B
	else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 527A8E64
		/// @DnDParent : 2826124C
		instance_destroy();}}