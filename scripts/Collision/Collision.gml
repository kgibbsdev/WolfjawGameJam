// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Attempting to abstract player movement and collision checking into functions.
// My thought here is that it will make it easier to manage and extend as we start to dive deeper
// into the mechanics and need to add or make changes.

function VerticalCollision(xPosition, yPosition) {
	if (place_meeting(x + xPosition, y + yPosition, oGround)) {
			return true;
	}
	
	return false;
}


function HorizontalCollision(xPosition, yPosition) {
	if (place_meeting(x + xPosition, y + yPosition, oStoneWall)) {
			return true;
	}
	
	return false;
}
