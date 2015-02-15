import g4p_controls.*;

void setup(){
  size(800,600);
  frameRate(10);
  loadMainMenuImage();
  startButtonCreate();
}

void draw(){
  println("This is the heart Rate:" + heartRate);
  if (buttonPressed == true){
    gameScreen();
    buttonPressedState = 1;
  }
  if (heartGUINotCreated == false){
    createGUI();
    heartGUINotCreated = true;
  }
}

void mousePressed(){
    if (mouseX > leftX && mouseX < downX && mouseY < downY && mouseY > upY && buttonPressedState == 0){
      buttonPressed = true;
      heartGUINotCreated = false;
  }

}

