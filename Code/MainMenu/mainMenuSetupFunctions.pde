void loadMainMenuImage(){
  PImage MenuPicture = loadImage("Data/MainMenu.png");
  image(MenuPicture, 0, 0);
  rect(leftX, upY, 250, 55);
}

void startButtonCreate(){
  fill(0);
  textFont(startButton, 40);
  text("Start", leftX + 80, upY + 45);
}

void gameScreen(){
  background(255);
  // Player Health Bar
  heartRate--;
  if (lungsGUINotCreated){
    lungHealth--;
  }
  if (heartRate < 100 || heartRate >= 170){
    gameHealth--;
    healthBarX -= 2.88;
  }
  if (gameHealth <= 0){
    youAreDead = true;
    noLoop();
  }
  if (youAreDead){
    fill(0);
    textFont(gameFont, 48);
    text("YOU LOSE", 350,250);
  }
  noStroke();
  fill(#EA3B3B);
  rect(0,0,370,100);
  fill(#FFFFFF);
  rect(30,30,300,40);
  fill(#FF0000);
  rect(36,36,gameHealth * healthSizeFactor ,28);
  
  fill(#FFFFFF);
  textFont(gameFont,25);
  text("health", 5,25);
  text(gameHealth, 30,95);
}

/*String[] reverseList(String[] reverseMe){
  String[] returnList = new String[4];
 for(int ForInt = 0; ForInt < reverseMe.length; ForInt++){
  int reverseForInt = reverseMe.length - 1;
  returnList[ForInt] = reverseMe[reverseForInt];
  reverseForInt--;
 }
 print(returnList);
 print(reverseMe);
 return returnList;
}*/



