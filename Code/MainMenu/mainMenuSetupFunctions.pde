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
  heartRate = heartRate - 0.5;
  score++;
  if(eyeGUINotCreated){
    eyeHealth = eyeHealth - 0.5;
  }
  if (lungsGUINotCreated){
    lungHealth = lungHealth - 0.5;
  }
  if (heartRate < 100 || heartRate >= 170){
    gameHealth--;
    healthBarX -= 2.88;
  }
  if (gameHealth <= 0){
    youAreDead = true;
    player.close();
    minim.stop();
    super.stop();
    noLoop();
  }
  if (youAreDead){
    fill(0);
    textFont(gameFont, 48);
    text("YOU LOSE", 280,320);
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
  text(gameHealth / 4, 30,95);
  
  // Player Score
  score++;
  fill(#FFFF00);
  rect(600,0,200,100);
  fill(0);
  text("score:" + score, 635,55);
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



