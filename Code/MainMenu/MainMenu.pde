import g4p_controls.*;

void setup(){
  size(800,600);
  frameRate(10);
  loadMainMenuImage();
  startButtonCreate();
}

void draw(){
  if (buttonPressed == true){
    gameScreen();
    buttonPressedState = 1;
    lungTimer++;
  }
  if (heartGUINotCreated == false){
    createGUI();
    heartGUINotCreated = true;
  }
  if (lungTimer >= lungTimerCap){
    if (lungHealthLoop == false){
     createLungsGUI();
     lungHealthLoop = true;
    }
     println("lungHealth = " + lungHealth);
     lungsGUINotCreated = true;
  }
}

void mousePressed(){
    if (mouseX > leftX && mouseX < downX && mouseY < downY && mouseY > upY && buttonPressedState == 0){
      buttonPressed = true;
      heartGUINotCreated = false;
  }

}

