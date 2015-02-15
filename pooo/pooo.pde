//Mind Control: Heart
import gifAnimation.*;
import g4p_controls.*;

void setup(){

  frameRate(15); 

  size(500, 500);
  img = loadImage("TitleScreen.png");
  imgHoverStart = loadImage("TitleScreenStartHover.png");
  imgHoverOptions = loadImage("TitleScreenOptionStart.png");
  imgWhite = loadImage("GameScreen.png");
  rectColor = color(120);
  rectHighlight = color(200);
  rectX = 37;
  rectY = 390;
  rectX2 = 300;
  rectY2 = 390;
  rectHealthX = 07;
  rectHealthY = 60;
  
  rect(rectX, rectY, rectWidth, rectHeight);
  rect(rectX2, rectY2, rectWidth + 60, rectHeight);
  image(img, 0, 0, img.width/2, img.height/2);
  
  f = loadFont( "LVDCGameOver2-48.vlw" );
  
}

void draw()  {
  if (gameHealth < 0){
   youAreDead = true; 
   noLoop();
  }
  if (youAreDead){
    textFont(f,40);
    fill(0);
    text ("you Lose" ,10,200);
  }
  textFont(f,16);
  fill(0);
  text ( heartRate ,10,100);
  update(mouseX, mouseY);
  if (!buttonPressed){
  if (rectOver) {
    background(0);
    image(imgHoverStart, 0, 0, imgHoverStart.width/2, img.height/2);
  } 
  else{ 
    if (rectOver2) {
   background(0);
  image(imgHoverOptions, 0, 0, imgHoverOptions.width/2, img.height/2);
  }
  else {
    fill(rectColor);
    background(0);
    image(img, 0,0, img.width/2, img.height/2);
  }
  }
  }
  else{
    if (!GUIisCreated){
      createGUI();
      GUIisCreated = true;
    }
    //image(imgWhite, 0, 0, imgWhite.width/2, img.height/2);
    fill(#F0008C);
    stroke(255);
    rect(rectHealthX, rectHealthY, gameHealth, rectHeight/5);
    if (gameHealth < 0){
      
    }
  }}
void createWindows(String windowName) {
 print("Making a window");
 GWindow window = new GWindow(this,windowName, 500,50,477,538,false, JAVA2D);
 window.addOnCloseHandler(this, "windowClosing");
 window.setActionOnClose(GWindow.CLOSE_WINDOW);
  
}


//pensi
//boolean overRect2(int x, int y, int width, int height)

