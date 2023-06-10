// I was thinking attaching base level movement to a player parent object may help us with organization in the future
// specifically if we start to implement player based actions and such outside basic locomotion.

// ======================== Player Variables ========================= 
movementSpeed = 9;
jumpSpeed = -18;

velocityX = 0;
velocityY = 0;

// =================== Position Tracking ============================
// Using mostly for jump testing and such, perhaps there is another use for this tracking?
lastGroundedX = x;
lastGroundedY = y;


//=================== Environmental Variables =======================
// Idea/Thought. Maybe we could make different levels on different kinds of planets, with
// different strengths of gravity, possibly an enum of possible values? Is this possible?
gravityStrength = 0.5;
groundResistance = 0.7;
airResistance = 0.125;


//=====================Collision Variable===============================
touchingMonster = false;
isOnGround = false;



