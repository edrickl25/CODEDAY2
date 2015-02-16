import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

import g4p_controls.*;

AudioPlayer player;
Minim minim;

void setup(){
  size(800,600);
  frameRate(30);
  minim = new Minim(this);
  player = minim.loadFile("GameplayLoop_NoEvent.mp3",2048);
  if (player.isPlaying()){
   print("IFENWOODE"); 
  }
  loadMainMenuImage();
  startButtonCreate();
}

void draw(){
    println("lungHealth = " + lungHealth);
    println("heartRate = " + heartRate);
    println("eyeHealth = " + eyeHealth);
  
  if (buttonPressed == true){
    gameScreen();
    buttonPressedState = 1;
    lungTimer++;
    eyeTimer++;
  }
  if (heartGUINotCreated == false){
    createGUI();
    heartGUINotCreated = true;
  }
  if (lungTimer >= lungTimerCap){
    if (lungHealthLoop == false){
     createLungsGUI();
     lungsGUINotCreated = true;
     lungHealthLoop = true;
    }
  }
  if(eyeTimer >= eyeTimerCap){
    if(eyeHealthLoop == false){
      createEyeGUI();
      eyeHealthLoop = true;
    }
    eyeGUINotCreated = true;
  }
}

void mousePressed(){
    if (mouseX > leftX && mouseX < downX && mouseY < downY && mouseY > upY && buttonPressedState == 0){
      buttonPressed = true;
      heartGUINotCreated = false;
  }

}

