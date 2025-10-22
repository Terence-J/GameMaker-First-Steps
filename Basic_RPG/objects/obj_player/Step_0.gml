var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

// Move direction
var xSpeed = (rightKey - leftKey) * moveSpeed;
var ySpeed = (downKey - upKey) * moveSpeed;

// Pause event
if instance_exists(obj_pause){
	xSpeed = 0;
	ySpeed = 0;
}

// Set sprite
if xSpeed > 0 {face = 0};
if xSpeed < 0 {face = 2};
if ySpeed < 0 {face = 1};
if ySpeed > 0 {face = 3};
sprite_index = sprite[face];

// wall collision detector
if place_meeting(x + xSpeed, y, obj_wall) == true
	{
		xSpeed = 0;
	}
if place_meeting(x, y + ySpeed, obj_wall) == true
	{
		ySpeed = 0;
	}

// Position calculation
x += xSpeed;
y += ySpeed;

// Stop animate
if xSpeed == 0 && ySpeed == 0{
	image_index = 0;
}

// Depth
depth = -bbox_bottom;
