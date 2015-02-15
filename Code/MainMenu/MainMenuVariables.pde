//button Vriables
int leftX = 12;
int upY = 526;
int downX = leftX + 250;
int downY = upY + 55;

PFont startButton = createFont("Arial", 40, true);
boolean buttonPressed = false;
boolean heartGUINotCreated = true;

//Game Screen Variables
PFont gameFont=createFont("verdana", 25);

boolean youAreDead = false;
int buttonPressedState = 0;

float healthBarX = 288;
int gameHealth = 100;
float healthSizeFactor = 2.88;
