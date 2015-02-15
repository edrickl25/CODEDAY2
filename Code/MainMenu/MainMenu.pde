void setup(){
  size(800,600);
  frameRate(30);
  loadMainMenuImage();
  startButtonCreate();
}

void draw(){
  if (buttonPressed == true){
    gameScreen();
  }
}

void mousePressed(){
  if (mouseX > leftX && mouseX < downX && mouseY < downY && mouseY > upY){
    buttonPressed = true;
  }
}

