grav = 0.2;
horizontalSpeed = 0;
verticalSpeed = 0;
jumpSpeed = -7;
moveSpeed = 5;
isDead = false;
deathAnimationStarted = false;

// Possible to have wall jump reset this?
maximumAllowedJumps = 2;

// Not allowing jump until player first touches the ground.
firstGrounded = false;

// Initial Jump count
currentJump = 0;

// Is player allowed to jump
allowJump = false;

// Is player on the ground
onGround = false;