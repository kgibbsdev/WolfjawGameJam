#region Inputs
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
#endregion

#region Move!

if(!isDead) 
{
    //Player can only move if they aren't dead
    //Work out where to move horizontally
    horizontalSpeed = (keyRight - keyLeft) * moveSpeed * global.gameSpeed;
} 
else 
{
    if(!deathAnimationStarted) 
    {
        deathAnimationStarted = true;
    }
    
    if(deathAnimationStarted) 
    {
        image_angle += 25;    
    }
}

//Work out where to move vertically
verticalSpeed = verticalSpeed + grav;

//Work out if we should jump
if (place_meeting(x,y+1,oWall))
{    
    if !(firstGrounded) 
    {
        firstGrounded = !firstGrounded    
    }
    
    currentJump = 0;
    isGrounded = true;
    
} 
else 
{
    isGrounded = false;    
}

if (keyJump and currentJump < maximumAllowedJumps)
{
    if !(firstGrounded) 
    {
        return    
    }
    audio_play_sound(sndJump, 1, false);
    verticalSpeed = jumpSpeed;
    currentJump += 1;
}


//-1 or 1
var onePixel = sign(horizontalSpeed);

//Check for horizontal collisions and then move if we can
if(place_meeting(x+horizontalSpeed, y, oWall)) 
{
    //move as close as we can
    while(!place_meeting(x+onePixel, y, oWall)) 
    {
        x = x + onePixel;    
    }
    
    while (place_meeting(x, y, oWall)) 
    {
        x = x - global.gameSpeed
    }
    
    horizontalSpeed = 0;
}

if(place_meeting(x+horizontalSpeed, y, oDoor)){
	var doorInstance = instance_place(x+horizontalSpeed, y, oDoor);
	if(global.numKeys > 0) {
		global.numKeys--;
		instance_destroy(doorInstance);	
	} else {
		while(!place_meeting(x+onePixel, y, oDoor)) 
    {
        x = x + onePixel;    
    }
    
    while (place_meeting(x, y, oDoor)) 
    {
        x = x - global.gameSpeed
    }
    
    horizontalSpeed = 0;
	}
}

//Check for vertical collisions and move if we can
//-1 or 1
var onePixel = sign(verticalSpeed);
if(place_meeting(x, y+verticalSpeed, oWall)) 
{
    
    //move as close as we can
    while(!place_meeting(x, y+onePixel, oWall))
    {
        y = y + onePixel;
    }
    verticalSpeed = 0;
}

var instance = instance_place(x, y+1, oWall);
if(instance != noone) {
		if((keyRight - keyLeft) == 0){
			horizontalSpeed += instance.horizontalSpeed - global.terrainSpeedBonus;
		}
	}
	

y = y + verticalSpeed;
x = x + horizontalSpeed;

#endregion