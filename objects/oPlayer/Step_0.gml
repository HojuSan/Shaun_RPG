//Get Player Input
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown -keyUp != 0);
//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

x += hSpeed;
y += vSpeed;