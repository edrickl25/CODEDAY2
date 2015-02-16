//button Vriables
int leftX = 12;
int upY = 526;
int downX = leftX + 250;
int downY = upY + 55;

PFont startButton = createFont("Arial", 40, true);
boolean buttonPressed = false;
boolean heartGUINotCreated = true;
boolean lungsGUINotCreated = false;
boolean eyeGUINotCreated = false;


//Game Screen Variables
PFont gameFont=createFont("verdana", 25);

boolean youAreDead = false;
int buttonPressedState = 0;

float healthBarX = 288;
int gameHealth = 400;
float healthSizeFactor =.72;
int score = 0;

